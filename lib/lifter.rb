class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  # gives list of all lifters (gives instance... so name and weight)
  def self.all
    @@all
  end

  # give list of all memberships that a specific lifter has
  def memberships
    Membership.all.select {|membership_info| membership_info.lifter == self}
  end

  # get list of all gyms a specific lifter has memeberships to
  # COME BACK TO
  def gyms
   memberships.map(&:gym).map(&:name).uniq
  end

  # give average lift total of all lifters
  # COME BACK TO
  def self.average_lift
    self.all.map {|lifter| lifter.lift_total}.sum / self.all.length
  end

  # get total cost of specific lifter's membership(s)
  def total_cost
    memberships.map {|membership_info| membership_info.cost}.sum 
  end

  # given a gym and memembership cost, sign a specific lifter up for a new gym
  def new_membership(gym, cost)
    Membership.new(cost, self, gym)
  end

end

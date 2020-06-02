class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select{|membership| membership.lifter==self}
  end

  def gyms
    memberships.map{|membership| membership.gym}.uniq
  end

  def enroll(gym, membership_cost)
    Membership.new(self, gym, membership_cost)
  end

  def self.all
    @@all
  end

  def self.average_lift
    @@all.map{|lifter| lifter.lift_total}.sum/@@all.length
  end

  def cost_of_memberships
    memberships.reduce(0){|total_cost, membership| total_cost+membership.cost}
  end

end

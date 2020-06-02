class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all 
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}.uniq
  end

  def self.lifts
    @@all.map{|lifter| lifter.lift_total}
  end

  def self.average_lift
    self.lifts.sum / self.lifts.size
  end

  def total_cost
    self.memberships.collect{|membership| membership.cost}.sum
    # map is the same as collect
    # This is just to try!
  end

  def sign_up(gym, cost)
    Membership.new(cost,gym,self)
  end

end

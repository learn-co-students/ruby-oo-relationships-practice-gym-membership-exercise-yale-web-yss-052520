class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name:, lift_total:)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|mem| mem.lifter == self}
  end

  def gyms
    memberships.map{|mem| mem.gym}
  end

  def self.avg_lift_total
    self.all.map{|lifter| lifter.lift_total}.sum / self.all.length
  end

  def total_membership_cost
    memberships.map{|mem| mem.cost}.sum
  end

  def sign_up(gym:, cost:)
    Membership.new(gym: gym, cost: cost, lifter: self)
  end


end

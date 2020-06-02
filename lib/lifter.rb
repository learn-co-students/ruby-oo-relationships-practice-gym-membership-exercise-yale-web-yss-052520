class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    Membership.all.select{|mem| mem.lifter == self }
  end

  def gyms
    memberships.map(&:gym)
  end

  def total_cost
    memberships.sum(&:cost)
  end

  def new_gym(gym, cost)
    Membership.new(self, gym, cost)
  end

  # Class Methods
  def self.avg_lift_total
    all.sum(&:lift_total) / (all.length)
  end

  def self.all
    @@all
  end


end

class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map {|membership| membership.lifter}.uniq
  end

  def names
    self.lifters.map {|lifter| lifter.name}
  end

  def total_lift
    self.lifters.map{|lifter| lifter.lift_total}.sum
  end
end

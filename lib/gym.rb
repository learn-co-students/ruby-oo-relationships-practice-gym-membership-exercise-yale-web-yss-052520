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
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|membership| membership.lifter}.uniq
  end

  def names_of_lifters
    lifters.map {|lifter| lifter.name}
  end

  def combined_lift_total
    lifters.sum {|lifter| lifter.lift_total}
  end
end
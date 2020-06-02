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
    Membership.all.select{|m| m.gym == self}
  end

  def lifters
    memberships.map{|mem| mem.lifter}.uniq
  end

  def names
    lifters.map{|lifter| lifter.name}
  end

  def combined_lift_total
    lifters.map{|lifter| lifter.lift_total}.sum
  end


end

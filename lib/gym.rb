class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end


  def memberships
    Membership.all.select{|mem| mem.gym == self }
  end

  def lifters
    memberships.map(&:lifter)
  end

  def lifter_names
    lifters.map(&:name)
  end
  
  def lifter_avg
    lifters.sum(&:lift_total) / lifters.length
  end

  def self.all
    @@all
  end
  
end

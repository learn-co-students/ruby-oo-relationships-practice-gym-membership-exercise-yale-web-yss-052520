class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select{|membership| membership.gym==self}
  end

  def lifters
    memberships.map{|membership| membership.lifter}.uniq
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def combined_lift_total
    lifters.reduce(0){|total, lifter| total+lifter.lift_total}
  end
  
  def self.all
    @@all
  end
end

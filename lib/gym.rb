class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self 
  end

  def self.all 
    @@all 
  end
  
  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end 

  def lifters
    memberships.map {|membership| membership.lifter}
  end 

  def name_lifters
    lifters.map {|lifter| lifter.name}
  end 

  def lift_total 
    lifters.inject(0) {|total, lifter| total + lifter.lift_total}
  end 
end

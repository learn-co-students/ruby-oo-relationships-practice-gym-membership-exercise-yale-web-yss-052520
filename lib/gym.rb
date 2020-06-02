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
    memberships.map {|membership| membership.lifter }
  end 

  def names 
    memberships.map {|membership| membership.lifter.name }
  end 

  def combined_total 
    memberships.reduce(0) {|sum, membership| sum + membership.lifter.lift_total}
  end 


end

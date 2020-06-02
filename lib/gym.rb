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
    Membership.all.select{|mem| mem.gym == self}
  end 

  def lifters 
    self.memberships.map{|mem| mem.lifter}
  end 

  def lifter_names 
    self.lifters.map{|guy| guy.name}
  end 

  def lift_total
    sum = self.lifters.sum{|guy| guy.lift_total}
    sum / lifters.count 
  end  


end

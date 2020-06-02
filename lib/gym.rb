class Gym
  attr_reader :name
  @@all = [] 
  def initialize(name)
    @name = name
    save 
  end

  def save 
    self.class.all << self 
  end 

  def self.all 
    @@all 
  end 

  def memberships 
    Membership.all.select{|one_membership| one_membership.gym == self} 
  end 

  def lifters 
    memberships.map(&:lifter).uniq 
  end 

  def lifters_names
    lifters.map(&:name)
  end 

  def combined_lift_total 
    lifters.sum(&:lift_total) 
  end 
end

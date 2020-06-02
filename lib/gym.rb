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

  def all_memberships_gym
    Membership.all.select{|membership| membership.gym == self}
  end  

  def all_lifters
    all_memberships_gym.map{|membership| membership.lifter}
    
  end  

  def lifter_names
    all_lifters.map{|lifter| lifter.name}
    
  end

  def gym_lift_total
    all_lifters.sum{|lifter| lifter.lift_total}  
  end
  
end

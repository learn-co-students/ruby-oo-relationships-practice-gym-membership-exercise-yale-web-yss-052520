class Membership
  attr_reader :cost, :gym, :lifter 
  @@all = [] 
  def initialize(lifter,gym,cost)
    @lifter = lifter
    @gym = gym
    @cost = cost.to_f
    save 
  end

  def save 
    self.class.all << self
  end 

  def self.all 
    @@all 
  end 
end

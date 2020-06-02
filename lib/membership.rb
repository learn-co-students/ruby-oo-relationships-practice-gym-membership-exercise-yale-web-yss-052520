class Membership
  attr_reader :cost, :lifter, :gym, :cost

  @@all = []
  def initialize(lifter, gym, cost)    
    @lifter = lifter
    @gym = gym
    @cost = cost

    @@all << self
  end

  def self.all
    @@all
  end
  
end

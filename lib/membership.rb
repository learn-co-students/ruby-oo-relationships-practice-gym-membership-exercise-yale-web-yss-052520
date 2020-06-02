class Membership
  attr_accessor :gym, :lifter
  attr_reader :cost

  @@all = []

  def initialize(gym, lifter, cost)
    @cost = cost
    @gym = gym
    @lifter = lifter 
    @@all << self 
  end

  def self.all 
    @@all 
  end 

end

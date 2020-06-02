class Membership
  attr_reader :cost, :lifter, :cost, :gym
  @@all = []

  def initialize(cost, gym, lifter)
    @gym = gym
    @lifter = lifter
    @cost = cost
    self.class.all() << self
  end

  def self.all()
    @@all
  end
end

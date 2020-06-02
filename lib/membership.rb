class Membership
  attr_reader :lifter, :gym, :cost

  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym     
    @cost = cost
    save
  end

  def save
    self.class.all << self 
  end

  def self.all
    @@all
  end
end

class Membership

  # added :lifter & :gym to make deliverables possible

  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    self.class.all << self
  end

  # get list of all memberships
  def self.all
    @@all
  end

end

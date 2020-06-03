class Membership
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    save
  end

  def self.all
    @@all
  end
end

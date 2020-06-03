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

  def get_memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def get_lifters
    get_memberships.map {|membership| membership.lifter}
  end

  def get_lifter_names
    get_lifters.map {|lifter| lifter.name}
  end

  def get_lift_total
    get_lifters.sum {|lifter| lifter.lift_total}
  end


end

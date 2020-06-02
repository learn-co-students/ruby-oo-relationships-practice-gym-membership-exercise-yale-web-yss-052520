class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  # give list of all gyms
  def self.all
    @@all
  end

  # give list of all memberships at a specific gym
  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  # give list of all lifters that have a memebership to a specific gym
  def gym_lifters
    memberships.map(&:lifter).uniq
  end
  # give list of names of all lifters that have a membership to that gym
  def lifter_names
    gym_lifters.map(&:name)
  end

  # give combined lift total of every lifter that has a membership to that gym
  def combined_lift_total
    gym_lifters.map {|lifter| lifter.lift_total}.sum / gym_lifters.count
  end

end

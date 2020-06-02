class Gym
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    array = Membership.all.select{|membership| membership.gym == self}
    array.map{|membership| membership.lifter}.uniq
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def lift_total
    lifters.reduce(0){|sum, lifter| sum + lifter.lift_total}
  end
    
end

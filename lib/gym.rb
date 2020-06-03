class Gym
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    memberships.map{|membership| membership.lifter}.uniq
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def combined_lift_total
    lifters.sum{|lifter| lifter.lift_total}
  end

  def self.all
    @@all
  end
end

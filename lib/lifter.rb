class Lifter
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    save
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}.uniq
  end

  def total_membership_cost
    memberships.sum{|membership| membership.cost}
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

  def self.all
    @@all
  end

  def self.avg_lift_total
    self.all.sum{|lifter| lifter.lift_total} / self.count
  end
  
end

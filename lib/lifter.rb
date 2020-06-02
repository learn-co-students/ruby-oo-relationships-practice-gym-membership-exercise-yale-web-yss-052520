class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def self.average_lift_total
    self.all.reduce(0) {|sum, lifter| sum + lifter.lift_total} / self.all.length
  end

  def total_membership_cost
    memberships.reduce(0) {|sum, membership| sum + membership.cost}
  end

  def new_membership(gym, cost)
    Membership.new(cost, self, gym)
  end

end

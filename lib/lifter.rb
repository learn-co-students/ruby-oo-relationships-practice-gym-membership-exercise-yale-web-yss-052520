class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all() << self
  end

  def sign_up(gym, membership_cost)
    Membership.new(membership_cost, gym, self)
  end

  def memberships()
    Membership.all().select{|membership| membership.lifter == self}
  end

  def gyms()
    memberships().map{|membership| membership.gym}.uniq
  end

  def total_cost()
    memberships.reduce(0){|total, membership| total + membership.cost}
  end

  def self.total_lifts()
    all().reduce(0) {|total, lifter| total + lifter.lift_total}
  end

  def self.average_lifts()
    total_lifts()/all().count.to_f
  end

  def self.all()
    @@all
  end
end

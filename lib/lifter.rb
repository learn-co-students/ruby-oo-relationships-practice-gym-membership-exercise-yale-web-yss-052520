class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def get_gyms
    get_memberships.map {|membership| membership.gym}
  end

  def self.avg_lift
    all.sum {|lifter| lifter.lift_total} / all.size
  end

  def get_cost
    get_memberships.sum {|lifter| lifter.cost}
  end

  def self.sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end

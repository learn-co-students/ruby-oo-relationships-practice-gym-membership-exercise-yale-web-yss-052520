class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    save 
  end

  def save
    self.class.all << self 
  end

  def self.all
    @@all 
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym }
  end
# helper method
  def self.lift_total
    self.all.sum {|lifter| lifter.lift_total}
  end

  def self.lift_total_average
    self.lift_total / self.all.count
  end

  def total_cost
    memberships.sum {|membership| membership.cost}
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end
end

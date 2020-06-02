class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self 
  end
  
  # Gets a list of all lifters
  def self.all 
    @@all 
  end 

  # All the memberships a specific lifter has
  def memberships 
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms 
    memberships.map {|membership| membership.gym}
  end 

  def self.lift_total 
    self.all.inject(0) {|total, lifter| total + lifter.lift_total}
  end 

  def self.average_lift_total 
    self.lift_total / self.all.size.to_f
  end 

  def total_cost
    memberships.inject(0) {|sum, membership| sum + membership.cost}
  end

  def create_member(gym, cost)
    Membership.new(cost, gym, self)
  end   
end

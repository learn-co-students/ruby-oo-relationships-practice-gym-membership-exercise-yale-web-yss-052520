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

  def memberships 
    Membership.all.select{|mem| mem.lifter == self}
  end 

  def gyms 
    self.memberships.map{|mem| mem.gym}
  end 

  def self.average_lift 
   total = @@all.sum{|guy| guy.lift_total}
   total / @@all.count 
  end 

  def total_cost
    memberships.sum{|mem| mem.cost}
  end 

  def new_membership(gym, cost) 
    Membership.new(cost, gym, self)
  end 

end

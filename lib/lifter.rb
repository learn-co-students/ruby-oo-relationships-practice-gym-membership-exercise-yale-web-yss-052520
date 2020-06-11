class Lifter
  
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self 
  end

  def self.all 
    @@all 
  end 

  def memberships 
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms 
    memberships.map {|membership| membership.gym}.uniq
  end 

  def self.average_lift_total
    self.all.sum {|lifter| lifter.lift_total} / all.count.to_f
  end

  def total_cost
    memberships.sum {|membership| membership.cost}
  end

  def create_member(gym, cost)
    Membership.new(cost, gym, self)
  end

end
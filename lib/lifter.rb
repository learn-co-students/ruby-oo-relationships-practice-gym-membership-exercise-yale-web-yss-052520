class Lifter
  attr_reader :name, :lift_total
  @@all = [] 
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total.to_f
    save 
  end

  def save 
    self.class.all << self 
  end 

  def self.all 
    @@all 
  end 

  def memberships 
    Membership.all.select{|one_membership| one_membership.lifter == self}
  end 

  def gyms 
    memberships.map(&:gym).uniq 
  end 

  def self.average_lift_total 
    sum_lift_total = self.all.sum(&:lift_total)
    sum_lift_total / self.all.length 
  end 

  def memberships_cost 
    memberships.sum(&:cost)
  end 

  def sign_up(gym, cost)
    Membership.new(self,gym,cost)
  end 
end 


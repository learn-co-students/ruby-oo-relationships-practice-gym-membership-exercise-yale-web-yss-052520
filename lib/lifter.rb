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

  def all_memberships_lifter
    Membership.all.select{|membership| membership.lifter == self}
  end  

  def all_lifter_gyms
    all_memberships_lifter.map{|membership| membership.gym}.uniq
  end
  
  def self.avg_lift_total
    total_lift_total = self.all.sum{|lifter| lifter.lift_total}
    avg_lift = total_lift_total/self.all.length
  end

  def total_cost
    all_memberships_lifter.sum{|membership| membership.cost}
  end  

  def signup(gym, cost)
    Membership.new(cost, gym, self)
  end

end
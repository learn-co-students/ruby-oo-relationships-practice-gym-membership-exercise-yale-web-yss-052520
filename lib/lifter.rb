require 'pry'

class Lifter
  attr_reader :lift_total, :name

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
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms 
    self.memberships.map {|membership| membership.gym }
  end 

  def avg_lift_total
    # @@all.map {|lifter| lifter.lift_total / self.length }
    avg = @@all.map {|lifter| lifter.lift_total}.sum
    return avg / @@all.count
  end


  def total_cost 
    memberships.reduce(0) {|sum, membership| sum + membership.cost}
  end 

  def sign_up(gym,cost)
    Membership.new(gym, self, cost)
  end 
end 
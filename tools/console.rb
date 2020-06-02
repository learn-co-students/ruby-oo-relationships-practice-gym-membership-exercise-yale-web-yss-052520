# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1= Lifter.new("Maura", 100)
l2= Lifter.new("Karen", 200)
l3= Lifter.new("Tim", 300)

g0= Gym.new("Platinum")
g1= Gym.new("Gold")
g2= Gym.new("Silver")
g3= Gym.new("Bronze")

m1= Membership.new(199, l1, g0)
m2= Membership.new(299, l1, g1)
m3= Membership.new(399, l2, g2)
m4= Membership.new(499, l3, g3)
m5= Membership.new(599, l2, g2)
m6= Membership.new(699, l3, g2)

binding.pry
puts "Gains!"

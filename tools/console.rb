# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Dennis", 100)
l2 = Lifter.new("Alex", 150)
l3 = Lifter.new("Brian", 10)
l4 = Lifter.new("Noah", 70)
l5 = Lifter.new("Joe", 120)

g1 = Gym.new("GAINZ")
g2 = Gym.new("WHEY")
g3 = Gym.new("PROTEIN")
g4 = Gym.new("DUMBBELL")
g5 = Gym.new("BENCHPRESS")

m1 = Membership.new(25, l1, g1)
m2 = Membership.new(75, l3, g3)
m3 = Membership.new(50, l1, g2)
m4 = Membership.new(25, l4, g1)
m5 = Membership.new(100, l5, g4)

binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Abe", 150)
l2 = Lifter.new("Ben", 350)
l3 = Lifter.new("Chad", 1000)

g1 = Gym.new("Cool Gym")
g2 = Gym.new("Okay Gym")
g3 = Gym.new("Not Good Gym")

m1 = Membership.new(100, g1, l1)
m2 = Membership.new(150, g2, l1)
m3 = Membership.new(200, g3, l1)
m4 = Membership.new(125, g2, l2)
m5 = Membership.new(60, g3, l2)
m6 = Membership.new(25, g2, l3)

binding.pry

puts "Gains!"

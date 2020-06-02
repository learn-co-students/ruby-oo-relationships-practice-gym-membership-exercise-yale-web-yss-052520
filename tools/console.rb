# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
# test code goes here
g1 = Gym.new("gym1")
g2 = Gym.new("gym2")

l1 = Lifter.new("lifter1", 100)
l2 = Lifter.new("lifter2", 150)
l3 = Lifter.new("lifter3", 200)
l4 = Lifter.new("lifter4", 250)
l5 = Lifter.new("lifter5", 300)


m1 = Membership.new(100, g1, l1)
m2 = Membership.new(100, g1, l2)
m3 = Membership.new(200, g2, l3)
m4 = Membership.new(200, g2, l4)
m5 = Membership.new(200, g2, l1)


binding.pry

puts "Gains!"

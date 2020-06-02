# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("A", 1)
l2 = Lifter.new("B", 2)
l3 = Lifter.new("C", 3)
l4 = Lifter.new("D", 4)
l5 = Lifter.new("E", 5)
l6 = Lifter.new("F", 6)
l7 = Lifter.new("G", 7)
l8 = Lifter.new("H", 8)

g1 = Gym.new("Golds")
g2 = Gym.new("Planet Fitness")
g3 = Gym.new("CrossFit")
g4 = Gym.new("F45")
g5 = Gym.new("Orange Theory")
g6 = Gym.new("Kickboxing")
g7 = Gym.new("Equinox")
g8 = Gym.new("Lifetime Fitness")

m1 = Membership.new(1, g1, l1)
m2 = Membership.new(100, g7, l1)
m3 = Membership.new(12, g2, l3)
m4 = Membership.new(10, g6, l4)
m5 = Membership.new(150, g8, l5)
m6 = Membership.new(100, g4, l3)
m7 = Membership.new(150, g5, l2)
m8 = Membership.new(12, g6, l1)
m9 = Membership.new(12, g3, l5)
m10 = Membership.new(12, g3, l8)



binding.pry

puts "Gains!"

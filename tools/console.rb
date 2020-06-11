# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

g1 = Gym.new("Dolphin Fitnes")
g2 = Gym.new("NYSC")
g3 = Gym.new("YMCS")

l1 = Lifter.new("John", 10)
l2 = Lifter.new("Joe", 100)
l3 = Lifter.new("Jim", 1000)

m1 = Membership.new(20, g1, l1)
m2 = Membership.new(30, g2, l3)
m3 = Membership.new(50, g3, l2)
m4 = Membership.new(100, g3, l1)
m5 = Membership.new(10, g2, l1)

binding.pry

puts "Gains!"

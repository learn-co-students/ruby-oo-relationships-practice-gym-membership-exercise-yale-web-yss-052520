# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("John Cena", 0)
l2 = Lifter.new("Michael Jordan", 200)
l3 = Lifter.new("Lebron James", 100)

g1 = Gym.new("Fitness Gym")
g2 = Gym.new("Workout Gym")
g3 = Gym.new("Best Gym")

m1 = Membership.new(g1, l1, 50)
m2 = Membership.new(g2, l1, 500)
m3 = Membership.new(g1, l2, 20)
m4 = Membership.new(g3, l3, 100)



binding.pry

puts "Gains!"

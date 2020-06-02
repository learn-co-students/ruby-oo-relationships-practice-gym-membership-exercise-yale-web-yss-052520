# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
bob = Lifter.new("bob", 10)
juan = Lifter.new("juan", 10)
best_gym = Gym.new("best gym")
juan.new_membership(10, best_gym)

binding.pry

puts "Gains!"

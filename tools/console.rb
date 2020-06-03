# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Fitness 19")
gym2 = Gym.new("Club Sports")
gym3 = Gym.new("24 Hour")

lifter1 = Lifter.new("Arthur", 200)
lifter2 = Lifter.new("Bryce", 180)
lifter3 = Lifter.new("JY", 150)

m1 = Membership.new(20, lifter1, gym1)
m2 = Membership.new(100, lifter1, gym2)
m3 = Membership.new(20, lifter2, gym1)
m4 = Membership.new(20, lifter3, gym1)

binding.pry

puts "Gains!"

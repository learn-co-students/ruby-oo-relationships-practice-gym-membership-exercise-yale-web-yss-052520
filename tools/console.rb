# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("lifter 1", 100)
lifter2 = Lifter.new("lifter 2", 200)
lifter3 = Lifter.new("lifter 3", 300)

gym1 = Gym.new("gym 1")
gym2 = Gym.new("gym 2")
gym3 = Gym.new("gym 3")

Membership1 = Membership.new(100, lifter1, gym1)
Membership2 = Membership.new(50, lifter1, gym2)
Membership3 = Membership.new(25, lifter1, gym3)
Membership4 = Membership.new(100, lifter2, gym1)
Membership5 = Membership.new(100, lifter3, gym1)

binding.pry

puts "Gains!"

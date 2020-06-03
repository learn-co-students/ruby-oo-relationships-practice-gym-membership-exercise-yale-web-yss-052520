# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Armie Hammer", 1200)
lifter2 = Lifter.new("Justin Derulo", 1000)
lifter3 = Lifter.new("Meera Shaw", 0)
lifter4 = Lifter.new("America Jones", 1000)

gym1 = Gym.new("Huge Gains")
gym2 = Gym.new("Enormous Gains")
gym3 = Gym.new("Ginormous Gains")

membership1 = Membership.new(lifter1, gym1, 250)
membership2 = Membership.new(lifter2, gym1, 300)
membership3 = Membership.new(lifter4, gym2, 600)
membership4 = Membership.new(lifter1, gym2, 250)

binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter = Lifter.new("Mikey", 200)
lifter1 = Lifter.new("Ernesto", 300)
lifter2 = Lifter.new("Francis", 400)
lifter3 = Lifter.new("Natasha", 250)

gym = Gym.new("Hercules Gym")
gym1 = Gym.new("One More Rep")
gym2 = Gym.new("DYEL")
gym3 = Gym.new("Get The Weight Up")

membership = Membership.new(lifter, gym, 20)
membership1 = Membership.new(lifter1, gym1, 25)
membership2 = Membership.new(lifter2, gym2, 30)
membership3 = Membership.new(lifter3, gym3, 20)
membership4 = Membership.new(lifter2, gym, 25)
membership5 = Membership.new(lifter, gym2, 15)
membership6 = Membership.new(lifter1, gym2, 20)
membership7 = Membership.new(lifter, gym3, 25)
membership8 = Membership.new(lifter1, gym3, 30)
membership9 = Membership.new(lifter2, gym3, 25)

binding.pry

puts "Gains!"

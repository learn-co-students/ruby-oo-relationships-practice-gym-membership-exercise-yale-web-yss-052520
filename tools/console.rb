# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1=Lifter.new("James", 300)
lifter2=Lifter.new("Jeanne", 200)
lifter3=Lifter.new("Ada", 800)
gym1=Gym.new("Soren's Gym")
gym2=Gym.new("Nika's Gym")
memb1=Membership.new(lifter1, gym1, 120)
memb2=Membership.new(lifter2, gym1, 100)
memb3=Membership.new(lifter3, gym1, 120)
memb4=Membership.new(lifter1, gym2, 200)
memb5=lifter3.enroll(gym2, 195)

binding.pry

puts "Gains!"

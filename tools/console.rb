# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("lifter1", 30)
lifter2 = Lifter.new("lifter2", 20)
lifter3 = Lifter.new("lifter3", 0)
lifter4 = Lifter.new("lifter4", 20)

gym1 = Gym.new("gym1")
gym2 = Gym.new("gym2")
gym3 = Gym.new("gym3")
gym4 = Gym.new("gym4")

lifter1.sign_up(gym1, 50)
lifter2.sign_up(gym1, 20)
lifter4.sign_up(gym1, 20)

lifter3.sign_up(gym2, 10)
lifter4.sign_up(gym2, 0)

lifter3.sign_up(gym3, 10)


binding.pry

puts "Gains!"

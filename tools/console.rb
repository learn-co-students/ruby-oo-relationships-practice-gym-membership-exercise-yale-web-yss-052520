# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("gym1")
gym2 = Gym.new("gym2")
gym3 = Gym.new("gym3")
lifter1 = Lifter.new("lifter1", 100)
lifter2 = Lifter.new("lifter2", 50)
lifter3 = Lifter.new("lifter3", 200)

lifter1.sign_up(gym1, 4000)
lifter1.sign_up(gym3, 10)
lifter2.sign_up(gym2, 5000)
lifter3.sign_up(gym1, 6000)
lifter3.sign_up(gym2, 8000)
lifter3.sign_up(gym3, 2000)

binding.pry
puts "Gains!"

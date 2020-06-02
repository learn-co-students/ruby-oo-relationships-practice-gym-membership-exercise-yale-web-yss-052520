# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("gym1")
gym2 = Gym.new("gym2")
gym3 = Gym.new("gym3")

alice = Lifter.new("alice", 1)
bob = Lifter.new("bob", 2)
carol = Lifter.new("carol", 8)

alice.sign_up(gym1, 100)
alice.sign_up(gym2, 200)
bob.sign_up(gym1, 150)
bob.sign_up(gym3, 200)
carol.sign_up(gym1, 200)
carol.sign_up(gym2, 300)
carol.sign_up(gym3, 500)

binding.pry

puts "Gains!"

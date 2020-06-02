# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new(name: "Lindsey", lift_total: 300)
lifter2 = Lifter.new(name: "Carlos", lift_total: 250)
lifter3 = Lifter.new(name: "Sid", lift_total: 70)
lifter4 = Lifter.new(name: "Ziggy", lift_total: 175)
lifter5 = Lifter.new(name: "Dave", lift_total: 275)

golds = Gym.new(name: "Gold's Gym")
crunch = Gym.new(name: "Crunch")
twentyfour = Gym.new(name: "24 Hour Fitness")

lifter1.sign_up(gym: golds, cost: 50)
lifter1.sign_up(gym: crunch, cost: 20)
lifter2.sign_up(gym: golds, cost: 50)
lifter3.sign_up(gym: crunch, cost: 20)
lifter4.sign_up(gym: twentyfour, cost: 24)
lifter5.sign_up(gym: crunch, cost: 20)
lifter5.sign_up(gym: twentyfour, cost: 24)




binding.pry

puts "Gains!"

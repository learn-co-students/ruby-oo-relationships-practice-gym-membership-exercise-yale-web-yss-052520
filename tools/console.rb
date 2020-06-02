# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

pokegym = Gym.new("pokegym")
impuls = Gym.new("impuls")

tom = Lifter.new("Tom", 50)
eric = Lifter.new("Eric", 100)

pokegym_tom = Membership.new(100, pokegym, tom)
impuls_eric = Membership.new(200, impuls, eric)
impuls_tom = Membership.new(200, impuls, tom)



binding.pry

puts "Gains!"

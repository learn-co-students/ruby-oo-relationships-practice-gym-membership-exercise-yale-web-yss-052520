require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

lifter1 = Lifter.new("Anmol", 5)
lifter2 = Lifter.new("Mushi", 10)
lifter3 = Lifter.new("Mom", 20)
lifter4 = Lifter.new("Dad", 4)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")

m1 = Membership.new(5, lifter1, gym1)
m2 = Membership.new(6, lifter2, gym1)
m3 = Membership.new(7, lifter3, gym2)
m4 = Membership.new(8, lifter4, gym2)
m5 = Membership.new(9, lifter1, gym2)

binding.pry 
0




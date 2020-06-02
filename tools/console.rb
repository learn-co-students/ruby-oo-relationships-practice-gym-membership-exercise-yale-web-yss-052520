# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'



        # Instances
lifter_1 = Lifter.new("Joe", 200)
lifter_2 = Lifter.new("Alex", 300)
lifter_3 = Lifter.new("Ryan", 550)
lifter_4 = Lifter.new("Nick", 0)

gym_1 = Gym.new("Gold's Gym")
gym_2 = Gym.new("Payne Whitney")
gym_3 = Gym.new("Hopper Gym")

mem_1 = Membership.new(lifter_1, gym_1, 60)
mem_2 = Membership.new(lifter_2, gym_2, 100)
mem_3 = Membership.new(lifter_3, gym_3, 120)
mem_4 = Membership.new(lifter_1, gym_2, 0)

        # Deliverables
# **Lifter**

    puts  "---------- Get a list of all lifters"
pp Lifter.all
    puts "---------- Get a list of all the memberships that a specific lifter has"
pp lifter_1.memberships
    puts "---------- Get a list of all the gyms that a specific lifter has memberships to"
pp lifter_1.gyms
    puts "---------- Get the average lift total of all lifters"
pp Lifter.avg_lift_total
    puts "---------- Get the total cost of a specific lifter's gym memberships"
pp lifter_1.total_cost
    puts "---------- Given a gym and a membership cost, sign a specific lifter up for a new gym"
pp lifter_2.new_gym(gym_3, 300)
pp lifter_2.memberships
# **Membership**

    puts "---------- Get a list of all memberships"
pp Membership.all
# **Gym**

    puts "---------- Get a list of all gyms"
pp Gym.all
    puts "---------- Get a list of all memberships at a specific gym"
pp gym_2.memberships
    puts "---------- Get a list of all the lifters that have a membership to a specific gym"
pp gym_2.lifters
    puts "---------- Get a list of the names of all lifters that have a membership to that gym"
pp gym_2.lifter_names
    puts "---------- Get the combined lift total of every lifter has a membership to that gym"
pp gym_2.lifter_avg

# binding.pry

puts "Gains!"

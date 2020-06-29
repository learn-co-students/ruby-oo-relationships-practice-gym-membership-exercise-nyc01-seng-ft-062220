# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

eli = Lifter.new("Eli", 10)
chiara = Lifter.new("Chiara", 15)
tashawn = Lifter.new("Tashawn", 30)

crunch = Gym.new("Crunch")
pf = Gym.new("Planet Fitness")

mem1 = Membership.new(50, eli, crunch)
mem2 = Membership.new(70, eli, pf)
mem3 = Membership.new(50, chiara, pf)


binding.pry

puts "Gains!"

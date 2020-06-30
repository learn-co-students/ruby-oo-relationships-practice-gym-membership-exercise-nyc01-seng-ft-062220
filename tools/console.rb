# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Bob", 100)
lifter2 = Lifter.new("John", 120)
lifter3 = Lifter.new("Sam", 90)
lifter4 = Lifter.new("Joe", 150)
lifter5 = Lifter.new("Bill", 75)

gym1 = Gym.new("Golds Gym")
gym2 = Gym.new("Lifting Pro")
gym3 = Gym.new("Black Belt Gym")



binding.pry

puts "Gains!"

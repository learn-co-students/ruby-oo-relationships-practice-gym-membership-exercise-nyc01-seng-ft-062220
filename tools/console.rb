# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Harry", 500)
l2 = Lifter.new("Troy", 1000)
l3 = Lifter.new("Sarah", 200)
l4 = Lifter.new("Pam", 100)
l5 = Lifter.new("Kevin", 800)
l6 = Lifter.new("Peter", 900)
l7 = Lifter.new("Son", 600)
l8 = Lifter.new("Lam", 300)
l9 = Lifter.new("Kim", 760)
l10 = Lifter.new("Cena", 230)

g1 = Gym.new("New York Sporst Club")
g2 = Gym.new("LA Fitness")
g3 = Gym.new("Blink")

l1.sign_up(g1, 40)
l2.sign_up(g1, 45)
l3.sign_up(g1, 55)
l4.sign_up(g1, 50)
l5.sign_up(g2, 30)
l6.sign_up(g2, 22)
l7.sign_up(g2, 25)
l8.sign_up(g3, 90)
l9.sign_up(g3, 88)
l10.sign_up(g3, 95)


binding.pry

puts "Gains!"

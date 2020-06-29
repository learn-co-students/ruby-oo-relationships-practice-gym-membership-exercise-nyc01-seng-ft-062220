class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |element|
      element.lifter == self
    end
  end

  def gyms
    memberships.map do |element|
      element.gym
    end
  end

  def self.lift_total_average
    numerator = self.all.inject do |element|
      element.lift_total
    end
    lift_total.to_f/self.all.length.to_f
  end

  def total_cost
    memberships.inject do |element|
      element.cost
    end
  end
  
  def new_gym(gym,cost)
    Membership.new(self,gym,cost)
  end
end



# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym
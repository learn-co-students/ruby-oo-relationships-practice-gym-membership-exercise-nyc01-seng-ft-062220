class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |element|
      element.gym == self
    end
  end

  def lifters
    memberships.map do |element|
      element.lifter
    end
  end

  def lifter_names
    lifters.map do |element|
      element.name
    end
  end
  
  def lift_total
    lifters.inject do |element|
      element.lift_total
    end
  end
end


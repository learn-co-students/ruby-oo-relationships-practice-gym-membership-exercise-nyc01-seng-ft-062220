require "pry"

class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.gym == self}
  end

  def lifters
    self.memberships.map {|m| m.lifter}
  end

  def lifter_names
    self.lifters.map {|l| l.name}
  end

  def combined_lift
    totals = self.lifters.map {|l| l.lift_total}
    totals.sum(0.0)
  end

end

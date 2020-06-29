require "pry"

class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    self.memberships.map {|m| m.gym}
  end

  def self.average_lift
    totals = self.all.map {|l| l.lift_total}

    totals.sum(0.0) / totals.count
  end

  def costs
    self.memberships.map {|m| m.cost}
  end

  def new_gym (cost, gym)
    Membership.new(cost, self, gym)
  end


end

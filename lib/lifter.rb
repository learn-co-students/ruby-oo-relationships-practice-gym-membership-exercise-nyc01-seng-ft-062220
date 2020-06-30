class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all = []
  end

  def self.all
    #Get a list of all lifters
    @@all
  end

  def lifter_memberships
    #Get a list of all the memberships that a specific lifter has

  end

  def lifter_gyms
    #Get a list of all the gyms that a specific lifter has memberships to

  end

  def self.average_lift_total
   #Get the average lift total of all lifters

  end

  def cost_of_membership
    #Get the total cost of a specific lifter's gym memberships

  end

  def new_membership(lifter)
    #Given a gym and a membership cost, sign a specific lifter up for a new gym

  end

end

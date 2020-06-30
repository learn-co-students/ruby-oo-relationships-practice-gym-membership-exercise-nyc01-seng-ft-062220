class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    #Get a list of all lifters
    @@all
  end

  def lifter_memberships
    #Get a list of all the memberships that a specific lifter has
    Membership.all.map {|membership| membership if membership.member == self}.compact
  end

  def lifter_gyms
    #Get a list of all the gyms that a specific lifter has memberships to
    Membership.all.map {|membership| membership.gym if membership.member == self}.compact
  end

  def Gym.average_lift_total
   #Get the average lift total of all lifters
   how_many_lifters = Membership.all.map {|membership| membership.member}.uniq
   all_lift = Membership.all.map {|membership| membership.member.lift_total}.uniq
   all_lift.sum / how_many_lifters.length
  end

  def cost_of_membership
    #Get the total cost of a specific lifter's gym memberships
    total_cost = Membership.all.map {|membership| membership.cost if membership.member == self}.compact
    total_cost.sum
  end

  def new_membership(cost, gym)
    #Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, self, gym)
  end

end

class Gym
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    #Get a list of all gyms
    @@all
  end

  def all_memberships
    #Get a list of all memberships at a specific gym
    Membership.all.map {|membership| membership if membership.gym == self}.compact
  end


  def all_lifters_at_gym
    #Get a list of all the lifters that have a membership to a specific gym
    Membership.all.map {|membership| membership.member if membership.gym == self}.compact
  end

  def all_lifters_at_gym_specific
    #Get a list of the names of all lifters that have a membership to that gym
    Membership.all.map {|membership| membership.member.name if membership.gym == self}.compact
  end

  def lift_total
    #Get the combined lift total of every lifter has a membership to that gym
    all_lift = Membership.all.map {|membership| membership.member.lift_total if membership.gym == self}.compact
    all_lift.sum
  end
  
end

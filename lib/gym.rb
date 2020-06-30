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

  def self.all_memberships
    #Get a list of all memberships at a specific gym

  end


  def all_lifters_at_gym
    #Get a list of all the lifters that have a membership to a specific gym
  end

  def all_lifters_at_gym_specific
    #Get a list of the names of all lifters that have a membership to that gym

  end

  def lift_total
    #Get the combined lift total of every lifter has a membership to that gym

  end
  
end

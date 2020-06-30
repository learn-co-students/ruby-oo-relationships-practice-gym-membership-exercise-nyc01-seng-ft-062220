class Membership
  attr_reader :cost
  attr_accessor :member, :gym

  @@all = []

  def initialize(cost, member, gym)
    @cost = cost
    @member = member
    @gym = gym
    @@all << self
  end

  def self.all
    #Get a list of all memberships
    @@all
  end

end

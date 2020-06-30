class Membership
  attr_reader :cost

  @@all = []

  def initialize(cost)
    @cost = cost
    @@all << self
  end

  def self.all
    #Get a list of all memberships
    @@all
  end

end

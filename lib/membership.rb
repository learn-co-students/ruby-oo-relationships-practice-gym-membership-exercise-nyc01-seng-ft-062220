class Membership
  attr_reader :cost, :gym_id, :lifter_id
  @@all = []

    def initialize(gym_id, lifter_id, cost)
      @cost = cost
      @gym_id = gym_id
      @lifter_id = lifter_id
      @@all << self
    end

    def self.all
      @@all
    end
end

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

    def membership
      Membership.all.select {|id| id.lifter_id == self}
    end

    def self.average_lift
      total_lift = @@all.map {|id| id.lift_total}.sum
      total_lift / @@all.length
    end

    def total_cost
      membership.map {|id| id.cost}.sum
    end

    def sign_up(gym, cost)
      Membership.new(gym, self, cost)
    end

end
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
      Membership.all.select {|id| id.gym_id == self}
    end

    def lifter
      memberships.map {|id| id.lifter_id}
    end

    def lifters
      memberships.map {|id| id.lifter_id.name}.uniq
    end

    def members_total
      memberships.count
    end

end

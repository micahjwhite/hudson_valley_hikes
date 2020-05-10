class HudsonValleyHikes::Hike

    attr_reader :name, :location, :number_of_reviews, :reviews

    @@all = []

    def initialize(name, location, number_of_reviews, reviews) 
        @name = name
        @location = location
        @number_of_reviews = number_of_reviews
        @reviews = reviews
        @@all << self
    end

    def self.all
        @@all
    end
end
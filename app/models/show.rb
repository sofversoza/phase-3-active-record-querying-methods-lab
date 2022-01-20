class Show < ActiveRecord::Base
    
    # returns the RATING of the TV show with the highest rating
    def self.highest_rating
        Show.maximum(:rating)
    end

    # returns the NAME of the TV show with the highest rating
    def self.most_popular_show
        Show.where('rating = ?', self.highest_rating).first
    end

    # returns the RATING of the TV show with the lowest rating
    def self.lowest_rating
        Show.minimum(:rating)
    end

    # returns the NAME of the TV show with the lowest rating 
    def self.least_popular_show
        Show.where('rating = ?', self.lowest_rating).first
    end

    # returns the SUM of all the RATINGS of all the tv shows
    def self.ratings_sum
        Show.sum(:rating)
    end

    # returns an array of all of the shows with a rating above 5
    def self.popular_shows
        Show.where('rating >= ?', 5)
    end

    # returns an array of all of the shows, listed in alphabetical order
    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end
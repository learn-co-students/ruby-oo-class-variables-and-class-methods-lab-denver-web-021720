require 'pry'

class Song

    @@count = 0 
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre

    def initialize name, artist, genre
        @name = name 
        @artist = artist 
        @genre = genre
        @@count += 1 
        @@artists << artist 
        @@genres << genre
    end 

    def self.count 
        @@count
    end 

    def self.artists 
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.count_helper(data)
        result = {}
        data.each do |d|
          result[d] ? result[d] += 1 : result[d] = 1   
        end
        result
    end 

    def self.genre_count
        self.count_helper(@@genres)
    end 

    def self.artist_count 
        self.count_helper(@@artists)
    end 
end 


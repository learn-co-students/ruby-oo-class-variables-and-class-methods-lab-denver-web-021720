class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@genres << genre
        @@artists << artist
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

    def self.genre_count
        @@genres.reduce({}) do |holding_hash, genre|
            if holding_hash.key?(genre)
                holding_hash.tap{holding_hash[genre] += 1}
            else
                holding_hash.tap{holding_hash[genre] = 1}
            end
        end
    end

    def self.artist_count
        @@artists.reduce({}) do |holding_hash, artist|
            if holding_hash.key?(artist)
                holding_hash.tap{holding_hash[artist] += 1}
            else
                holding_hash.tap{holding_hash[artist] = 1}
            end
        end
    end
end
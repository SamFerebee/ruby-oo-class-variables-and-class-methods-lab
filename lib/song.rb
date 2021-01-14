require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_totals = {}
    @@artist_totals = {}
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)

       # if @@genre_totals.has_key?(genre)
        #    @@genre_totals[genre]+=1
        #else
            @@genre_totals[genre] = 1
        #end

        if @@artist_totals[@artist]
            @@artist_totals[@artist]+=1
        else
            @@artist_totals[@artist] = 1
        end

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genre_totals
    end

    def self.artist_count
        @@artist_totals
    end

    binding.pry

end


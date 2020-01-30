require 'pry'
require 'song.rb'

class Artist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song|
            song.artist == self
        }
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        arr = []
        songs.each {|song| arr << song.genre}
        arr.uniq
        #songs.genre.uniq
        #binding.pry
    end
end
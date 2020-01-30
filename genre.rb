class Genre
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
        song.genre == self }
    end

    def artists
        arr = []
        songs.each {|song| arr << song.artist}
        arr.uniq
    end

end

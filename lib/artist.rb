require 'pry'

class Artist

#Class attributes, varibles, and method here
  attr_reader :name, :songs
  @@all = []

  def self.all
    @@all
  end

#Instantiating new instance of class Artist
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, genre)
    artist_song = Song.new(song_name, self, genre)
    # binding.pry
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end

  # binding.pry

end

require 'pry'

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
    end
  end

  def genres
    genre_array = []

    self.songs.select do |song|
      genre_array << song.genre
    end

    genre_array

  end


  def self.all
    @@all
  end

end #this is the end of the Artist class

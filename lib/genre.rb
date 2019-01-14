require 'pry'

class Genre

  attr_reader :name, :artist, :song

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all do |song|
      song.genre == self.name
    end
  end

  def artists
    songs.map(&:artist)
  end

end #end of class

require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end

  def self.all
    @@all
  end

  # binding.pry

end #this is the end of the Song class

# binding.pry

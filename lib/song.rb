require 'pry'
require_relative '../lib/artist'
require_relative '../lib/genre'
class Song

  attr_accessor :artist
  attr_reader :name, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

end #end of class

a1 = Artist.new("jay_z")
g1 = Genre.new("rap")
s1 = Song.new("magna", a1, g1)
s2 = Song.new("freebird", "clapton", "rock")
s3 = Song.new("99 problems", a1, g1)
binding.pry

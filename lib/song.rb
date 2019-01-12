class Song

#Class attributes, varibles, and method here
  attr_reader :name
  attr_accessor :artist, :genre

  @@all = []

  def self.all
    @@all
  end

#Instantiating new instance of class Artist
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end


end

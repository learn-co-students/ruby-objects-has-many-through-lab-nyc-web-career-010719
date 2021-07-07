class Genre

#Class attributes, varibles, and method here
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

#Instantiating new instance of class Artist
  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end 


end

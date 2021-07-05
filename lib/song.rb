class Song

  attr_accessor :artist, :genre, :name

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




end # end of Song class

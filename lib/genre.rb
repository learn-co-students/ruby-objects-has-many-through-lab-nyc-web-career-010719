require 'pry'
require_relative './song'
require_relative './artist'

class Genre

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    # binding.pry
    artist_array = []
    self.songs.each do |song|
      artist_array << song.artist
    end
    artist_array
  end

  def self.all
    @@all
  end

end #this is the end of Genre


# genre1 = Genre.new("pop")
# genre2 = Genre.new("rap")

# jay_z = Artist.new('Jay-Z')
# kendrick = Artist.new('Kendrick Lamar')
# rap = Genre.new('rap')
# ninenty_nine_problems = Song.new('99 Problems', jay_z, rap)
# humble = Song.new('HUMBLE', kendrick, rap)
#
# binding.pry

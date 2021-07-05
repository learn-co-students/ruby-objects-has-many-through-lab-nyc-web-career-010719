class Genre

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


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
    self.songs.map do |song_instance|
      song_instance.artist
    end

  end



end #end of genre class

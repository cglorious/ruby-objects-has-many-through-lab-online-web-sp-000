class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    #new_song = Song.new #Song.new(name)
    Song.new(title)
    self.genre = genre #in initialize or with new_song
    self.songs = title
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.select {|my_songs| my_songs.genre}
  end

end

class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    #self.genre = genre #in initialize or with new_song
    self.song = song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.select {|my_songs| my_songs.genre}
  end

end

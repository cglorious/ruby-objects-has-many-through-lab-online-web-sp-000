class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient, appointment)
    the_appointment = 
    self.appointment =
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    self.song = song
  end

end

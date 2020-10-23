class Appointment

  attr_accessor

  @@all = []

  def initialize(date, patient, doctor)
    @name = name
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end

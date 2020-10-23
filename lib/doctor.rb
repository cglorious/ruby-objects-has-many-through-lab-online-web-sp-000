class Doctor

  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient, appointment)
    the_appointment = Appointment.new(date, patient) #check on Appointment.new requirements
    self.appointment = appointment
  end

  def appointments
    
  end

end

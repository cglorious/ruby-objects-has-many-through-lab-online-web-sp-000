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
    Appointment.all.select {|appts| appts.doctor == self} #check on Appointment.new requirements
  end

  def patients
    appointments.collect {|my_appts| my_appts.patient} #check on Appointment.new requirements
  end

end

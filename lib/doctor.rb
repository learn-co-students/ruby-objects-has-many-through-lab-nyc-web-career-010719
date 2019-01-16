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

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.doctor
    end
  end

  def patients
    appointments.map do |appoint|
      appoint.patient
    end
  end

end

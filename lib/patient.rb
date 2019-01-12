class Patient

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map {|h| h.doctor }
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

end

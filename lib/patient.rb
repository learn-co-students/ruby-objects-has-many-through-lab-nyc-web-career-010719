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

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |apps|
      apps.patient == self
    end
  end

  def doctors
    self.appointments.map do |app_instances|
      app_instances.doctor
    end
  end





end # end of patient class

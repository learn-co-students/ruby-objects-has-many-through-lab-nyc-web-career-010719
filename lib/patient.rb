require 'pry'

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.patient == self
    end
  end

  def doctors
    doctor_array = []

    self.appointments.each do |appointment|
      doctor_array << appointment.doctor
    end 

    doctor_array
  end

  def self.all
    @@all
  end


end #end of Patient class

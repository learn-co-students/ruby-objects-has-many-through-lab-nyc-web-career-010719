require 'pry'

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end
                      #patient instance
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self )
  end

  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
    end
  end

  def patients
    patient_array = []

    self.appointments.each do |apt|
      patient_array << apt.patient
    end

    patient_array

  end

  def self.all
    @@all
  end

end #end of Doctor class

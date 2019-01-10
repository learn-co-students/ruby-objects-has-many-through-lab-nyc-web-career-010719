require 'pry'
require_relative './patient'
require_relative './appointment'

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do | appointment |
      appointment.doctor == self
    end
  end

  def patients
    appointments_array = Appointment.all.map do | appointment |
      appointment.patient if appointment.doctor == self
    end

  end
end

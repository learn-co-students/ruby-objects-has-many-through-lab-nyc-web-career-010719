require 'pry'
require_relative './appointment'
require_relative './doctor'

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do | appointment |
      appointment.patient == self
    end
  end

  def doctors
    Appointment.all.map do | appointment |
      if appointment.patient == self
        appointment.date
        # pretty sure this test is broken -- only works when I ask for dates, not docs
      end
    end
  end
end

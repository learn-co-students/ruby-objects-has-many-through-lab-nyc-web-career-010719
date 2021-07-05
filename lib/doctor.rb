require 'pry'
class Doctor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def  appointments
    Appointment.all.select do |apps|
      apps.doctor == self
    end
  end

  def patients
    self.appointments.map do |app_instances|
      app_instances.patient
      #binding.pry
    end
  end




end # end of Doctor class

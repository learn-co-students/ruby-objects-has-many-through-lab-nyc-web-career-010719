require "pry"
class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(patient, doctor, date="Monday, August 1st")
    # binding.pry
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end #end of the class

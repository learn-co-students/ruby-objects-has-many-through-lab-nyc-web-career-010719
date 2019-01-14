require 'pry'

class Patient

  attr_reader :name, :appointment, :doctor

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
   Appointment.all.select do |appt|
     appt.patient == self
   end
 end

  def doctors
   Appointment.all.map do |appt|
     appt.doctor
   end
 end
end

require 'pry'
require_relative './lib/appointment'
require_relative './lib/doctor'
require_relative './lib/patient'

p1 = Patient.new("pat")
d1 = Doctor.new("doc")
a1 = Appointment.new(p1, "date", d1)

p1.doctors

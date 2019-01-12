class Appointment

  attr_reader :doctor, :date, :patient
  # attr_accessor :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(date,patient,doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

end

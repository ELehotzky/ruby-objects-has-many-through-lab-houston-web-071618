class Appointment

	@@all = []

	attr_accessor :date
	attr_reader :doctor, :patient

	def initialize(doctor, patient, date)
		@doctor = doctor
		@date = date
		@patient = patient 
		@@all << self
	end

	def self.all 
		@@all 
	end

end
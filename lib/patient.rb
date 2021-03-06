class Patient

	@@all = []

	attr_accessor :name 

	def initialize(name)
		@name = name 
		@@all << self
	end

	def self.all 
		@@all 
	end

	def new_appointment(doctor, date)
		Appointment.new(doctor, self, date)
	end

	def appointments
		Appointment.all.select do |appt|
			appt.patient == self
		end
	end

	def doctors 
		self.appointments.map do |appt|
			appt.doctor 
		end
	end



end
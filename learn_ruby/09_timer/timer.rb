require 'time'


class Timer
	attr_accessor :seconds
	
	def initialize(s = 0)
		@seconds = s
	end
	
	def time_string
		@timer = Time.at(@seconds).gmtime.strftime("%H:%M:%S")
	end
end






	
	
	
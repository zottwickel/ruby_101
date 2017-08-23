class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 00
	end
	def time_string
		
		@minutes = @seconds / 60
		@hours = @minutes / 60
		@seconds = @seconds % 60
		@minutes = @minutes % 60

		if @minutes < 10
			@minutes = "0" + @minutes.to_s
		end
		if @seconds < 10
			@seconds = "0" + @seconds.to_s
		end
		if @hours < 10
			@hours = "0" + @hours.to_s
		end
		@hours.to_s + ":" + @minutes.to_s + ":" + @seconds.to_s
	end

end

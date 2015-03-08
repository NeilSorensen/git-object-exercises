class Factorizer

	def initialize
		@factors = []
	end

	def factors number
		for i in 2..number do
			if (number % i == 0)
				@factors << i
				factors (number / i)
				return @factors.inspect
			end
		end
		return @factors.inspect
	end

end

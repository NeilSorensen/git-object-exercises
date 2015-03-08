class Numeral

	NUMERALS = {
		1 => "I",
		4 => "IV",
		5 => "V",
		9 => "IX",
		10 => "X",
		40 => "XL",
		50 => "L", 
		90 => "XC",
		100 => "C",
		400 => "CD",
		500 => "D",
		900 => "CM",
		1000 => "M"
	}

	def initialize(value)
		@value = value
	end

	def roman_numeral_convert
		while @value > 0
			
			if NUMERALS[@value]
				roman_numeral += NUMERALS[@value]
				return roman_numeral
			end

			roman_numeral += NUMERALS[lower_key(@value)]
			@value -= lower_key(@value)
		end
	end

	def lower_key(number)

		numerals_array = NUMERALS.collect {|k,v| k}
		numerals_array << number
		numerals_array.sort!

		index = numerals_array.find_index(number)
		return numerals_array[index - 1]
	end
end


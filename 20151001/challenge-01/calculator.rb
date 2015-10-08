class Calculator
	def add(n1, n2)
			raise ArgumentError if !(numeric?(n1) || numeric?(n2)) 
			Float(n1) + Float(n2)
	end
	
private
	def numeric?(number)
		Float(number) != nil rescue false
	end

end
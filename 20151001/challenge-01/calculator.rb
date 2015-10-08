class Calculator
	def add(n1, n2)
			raise ArgumentError if not_a_number?(n1, n2)
			Float(n1) + Float(n2)
	end

	def sub(n1, n2)
		raise ArgumentError if not_a_number?(n1, n2)
			Float(n1) - Float(n2)
	end
	
private
	def not_a_number?(n1, n2)
		Float(n1).nil? || Float(n2).nil? rescue true
	end

end
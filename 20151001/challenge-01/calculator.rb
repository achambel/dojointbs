class Calculator

	def calc(op, n1, n2)
			raise ArgumentError if not_a_number?(n1, n2)
			Float(n1).send(op, Float(n2))
	end
	
private
	def not_a_number?(n1, n2)
		Float(n1).nil? || Float(n2).nil? rescue true
	end

end
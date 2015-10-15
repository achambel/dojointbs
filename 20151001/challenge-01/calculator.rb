class Calculator

	def calc(op, n1, n2)
			raise ArgumentError if not_a_number?(n1, n2)
			n1, n2 = Float(n1), Float(n2)
			raise ZeroDivisionError if op.equal?(:/) and n2.zero?
			n1.send(op, n2)
	end

	def add_percent(value, percent)
		calc(:*, value, calc(:+, 1, calc(:/, percent, 100.00))).round(2)
	end

	def sub_percent(value, percent)
		calc(:/, value, calc(:+, 1, calc(:/, percent, 100.00))).round(2)
	end


private
	def not_a_number?(n1, n2)
		Float(n1).nil? || Float(n2).nil? rescue true
	end

end
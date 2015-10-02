class Calculator
	def add(n1, n2)
		raise TypeError if (n1.to_s =~ /^\d+$/).nil? or (n2.to_s =~ /^\d+$/).nil?
		n1.to_i + n2.to_i
	end
end
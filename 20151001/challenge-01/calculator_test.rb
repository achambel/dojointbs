require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
	def setup
		@calculator = Calculator.new
	end

	def test_add
		assert_equal(4, @calculator.add(2, 2), "2+2=4")
	end

	def test_add_with_one_string
		assert_equal(4, @calculator.add("2", 2), "'2'+2=4")
	end

	def test_add_two_string
		assert_equal(4, @calculator.add("2", "2"), "'2'+'2'=4")
	end

	def test_add_with_letters
		assert_raises ArgumentError do
			@calculator.add("a", "b")
		end
	end

	def test_add_with_float
		assert_equal(7.5, @calculator.add(3.75, 3.75), "3.75+3.75=7.5")
	end


	#def test_has_add
	#	assert_respond_to(@calculator, :add, "should have the add method")
	#end
	
end
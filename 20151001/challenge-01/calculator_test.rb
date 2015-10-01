require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
	def setup
		@calculator = Calculator.new
	end

	def test_add
		assert_equal(4, @calculator.add(2, 2), "2+2=4")
	end

	def test_has_add
		assert_respond_to(@calculator, :add, "should have the add method")
	end
	
end
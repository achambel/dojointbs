require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
	def setup
		@calculator = Calculator.new
	end

	def test_add
		assert_equal(4, @calculator.calc(:+, 2, 2), "2+2=4")
	end

	def test_add_with_one_string
		assert_equal(4, @calculator.calc(:+, "2", 2), "'2'+2=4")
	end

	def test_add_two_string
		assert_equal(4, @calculator.calc(:+, "2", "2"), "'2'+'2'=4")
	end

	def test_add_with_letters
		assert_raises ArgumentError do
			@calculator.calc(:+, "a", "b")
		end
	end

	def test_add_with_float
		assert_equal(7.5, @calculator.calc(:+, 3.75, 3.75), "3.75+3.75=7.5")
	end

	def test_sub
		assert_equal(4, @calculator.calc(:-, 8, 4), "8-4=4")
	end

	def test_sub_with_one_string
		assert_equal(4, @calculator.calc(:-, "8", 4), "'8'-4=4")
	end

	def test_sub_two_string
		assert_equal(4, @calculator.calc(:-, "8", "4"), "'8'-'4'=4")
	end

	def test_sub_with_letters
		assert_raises ArgumentError do
			@calculator.calc(:-, "a", "b")
		end
	end

	def test_sub_with_float
		assert_equal(3.75, @calculator.calc(:-, 7.5, 3.75), "7.5-3.75=3.75")
	end

		def test_mul
		assert_equal(20, @calculator.calc(:*, 5, 4), "5x4=20")
	end

	def test_mul_with_one_string
		assert_equal(30, @calculator.calc(:*, "6", 5), "'6'x5=30")
	end

	def test_mul_two_string
		assert_equal(64, @calculator.calc(:*, "8", "8"), "'8'x'8'=64")
	end

	def test_mul_with_letters
		assert_raises ArgumentError do
			@calculator.calc("%$$", "&*&")
		end
	end

	def test_mul_with_float
		assert_equal(7.5625, @calculator.calc(:*, 2.75, 2.75), "2.75x2.75=7.5625")
	end
	
end
require 'minitest/autorun'
require_relative 'calculator'

describe 'Calculator' do 
	before do
		@calculator = Calculator.new
	end

	describe '#add' do
		it 'should sum two numbers.2+2=4' do
			@calculator.add(2,1).must_equal 4
		end
	end
end
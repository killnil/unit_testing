require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def flip_sign(number)
    return number * -1
  end

  def factorial(number)
    product = 1

    number.times do 
      product *= number
      number -= 1
    end

    return product
  end

  def reciprocal(number)
    return 1.0 / number
  end

  def reverse_string(number)
    return number.to_s.reverse
  end
end


RSpec.describe Calculator do 
  describe '#add' do
    it 'should return the sum of two numbers' do 
      calculator = Calculator.new
      expect(calculator.add(1,3)).to eq(4)
    end
  end

  describe '#subtract' do 
    it 'should return the difference of two numbers' do 
      calculator = Calculator.new
      expect(calculator.subtract(8,3)).to eq(5)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do 
      calculator = Calculator.new
      expect(calculator.multiply(4,5)).to eq(20)
    end
  end

  describe '#divide' do 
    it 'should return the quotient of two numbers' do 
      calculator = Calculator.new
      expect(calculator.divide(30,6)).to eq(5)
    end
  end

  describe '#square' do 
    it 'should return the product of a single number multiplied by itself' do 
      calculator = Calculator.new
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do
    it 'should return the product of a first number times itself a second number of times' do 
      calculator = Calculator.new
      expect(calculator.power(5,3)).to eq(125)
    end
  end

  describe '#flip_sign' do 
    it 'should make a positive number negative' do
      calculator = Calculator.new
      expect(calculator.flip_sign(5)).to eq(-5)
    end

    it 'should make a negative number positive' do 
      calculator = Calculator.new
      expect(calculator.flip_sign(-8)).to eq(8)
    end
  end

  describe '#factorial' do 
    it 'should return the product of the number times each number below itself down to 1' do 
      calculator = Calculator.new
      expect(calculator.factorial(5)).to eq(120)
    end
  end

  describe '#reciprocal' do 
    it 'should return the quotient of 1 divided by the number' do 
      calculator = Calculator.new
      expect(calculator.reciprocal(5)).to eq(0.2)
    end
  end

  describe '#reverse_string' do 
    it 'should return the characters in the given number in reverse order' do 
      calculator = Calculator.new
      expect(calculator.reverse_string(58008)).to eq("80085")
    end
  end
end













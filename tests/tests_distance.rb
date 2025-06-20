require "minitest/autorun"
require "./distance"

class TestCalculator < Minitest::Test
  def test_addition
    calculator = Calculator.new
    assert_equal 4, calculator.add(2, 2), "Addition method failed"
    #so condition testing, funtion we are testing, and error message for when it fails
  end

  def test_subtraction
    calculator = Calculator.new
    assert_equal 4, calculator.subtract(6, 2), "Subtraction method failed"
end
end

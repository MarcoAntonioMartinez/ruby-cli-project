require "minitest/autorun"
require "./distance"

class TestDistance < Minitest::Test
  def test_distance_calc
    dist_calc = Distance.new("City A", "City E")
    
    assert_equal "To go from City A to City E it will take you #{rand(50)} miles." , dist_calc.distance_calc("12"), "Distance calculator method failed"
    #so condition testing, funtion we are testing, and error message for when it fails
  end


end

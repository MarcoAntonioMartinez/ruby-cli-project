require "minitest/autorun"
require "./distance"

class TestDistance < Minitest::Test
  def test_distance_calc
    dist_calc = Distance.new("City A", "City E")
    
    assert_equal "To go from City A to City E it will take you 28 miles.", dist_calc.distance_calc("12"), "Distance calculator method failed"
    
  end


end

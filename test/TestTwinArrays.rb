require "test/unit" 
require_relative "../src/TwinArrays"

class TestTwinArrays < Test::Unit::TestCase

  def test_case
      twinArrays = TwinArrays.new
      ar1 = [5, 4, 3, 2, 1]
      ar2 = [1, 2, 3, 4, 5]

      min_sum = twinArrays.solve_problem(ar1,ar2)
            
      assert_equal(2,min_sum)
      
  end

  def test_case_2
      twinArrays = TwinArrays.new
      ar1 = [0,1, 4, 3]
      ar2 = [6,7,8,9]

      min_sum = twinArrays.solve_problem(ar1,ar2)
            
      assert_equal(7,min_sum)
      
  end
  
end
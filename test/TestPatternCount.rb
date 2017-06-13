require "test/unit" 
require_relative "../src/PatternCount"

class TestTwinArrays < Test::Unit::TestCase

  def test_case 
    string = "100001abc101"
    patternCount = PatternCount.new
    pattern_count = patternCount.patternCount(string)
    assert_equal(2,pattern_count) 
  end
  
  def test_case_1
   # omit()
    string = "1001ab010abc01001"
    patternCount = PatternCount.new
    pattern_count = patternCount.patternCount(string)
    assert_equal(2,pattern_count) 
  end

   def test_case_2
    string = "1001010001"
    patternCount = PatternCount.new
    pattern_count = patternCount.patternCount(string)
    assert_equal(3,pattern_count) 
  end

  def test_case_3
    string = "100001abc101"
    patternCount = PatternCount.new
    pattern_count = patternCount.patternCount(string)
    assert_equal(2,pattern_count) 
  end



  def test_case_4
    string = "11011001"
    patternCount = PatternCount.new
    pattern_count = patternCount.patternCount(string)
    assert_equal(2,pattern_count) 
  end

end
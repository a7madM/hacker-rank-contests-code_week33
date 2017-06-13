require_relative "../src/TwinArrays"
require_relative "../src/PatternCount"
def test_TwinArrays
  twinArrays = TwinArrays.new
  ar1, ar2 = twinArrays.input
  result = twinArrays.solve_problem(ar1,ar2)
  puts result  
end

def test_patterCount
  patternCount = PatternCount.new
  q = gets.strip.to_i
  for i in 0..q-1
    input = patternCount.input
    result = patternCount.patternCount(input)
    puts result
  end
end

test_patterCount
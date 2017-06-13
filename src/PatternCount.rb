# problem https://www.hackerrank.com/contests/w33/challenges/pattern-count

class PatternCount
  
  def input 
    string = gets.strip
    return string
  end

  def patternCount(string)
    index = 0
    pattern_count = 0
    while index < string.length
      
      index, x = pattern_finder(string,index)
      if x == true
        pattern_count += 1
      end
      #p pattern_count

      index += 1
    end
    return pattern_count
  end

  def pattern_finder (string, index)
    first_ch = true
    find_zero = false
    for i in index...string.length
      ch = string[i]
      if first_ch
        if ch == "1"
          first_ch = false
        end
      elsif ch == "0"
        find_zero = true
      elsif ch == "1"
        if find_zero
          return i-1, true
        else 
          find_zero = false
        end
      else
        first_ch = true
      end
    end
    return i, false
  end


end
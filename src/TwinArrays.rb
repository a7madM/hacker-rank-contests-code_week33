# problem: https://www.hackerrank.com/contests/w33/challenges/twin-arrays


class TwinArrays
  def initialize() end

  def input
    gets.strip.to_i
    ar1 = gets.strip
    ar1 = ar1.split(' ').map(&:to_i)
    ar2 = gets.strip
    ar2 = ar2.split(' ').map(&:to_i)
    return ar1, ar2
  end

  def get_first_min(ar1,ar2)
    min1 , min2 = 10**5,10**5
    i, j = 0 ,0 
    for x in 0...ar1.length
      element1 = ar1[x]
      element2 = ar2[x]


      if min1 > element1
        i = x
        min1 = element1
      end
      
      if min2 > element2
        j = x
        min2 = element2
      end
    end
    
    return min1, min2, i, j
  end


  def get_second_min(ar1,ar2,i,j)
    min1 , min2 = 10**5,10**5

    for x in 0...ar1.length
      element1 = ar1[x]
      element2 = ar2[x]

      if i != x
        if min1 > element1 && x != i
          _i = x
          min1 = element1
        end
      end
      
      if j != x
        if min2 > element2 &&  x != j
          _j = x
          min2 = element2
        end
      end
    end
    
    return min1, min2, _i, _j
  end

  def solve_problem(ar1,ar2)

    # find first min
    min1, min2,i,j = get_first_min(ar1, ar2)
    hash1 = Hash.new
    hash2 = Hash.new
    
    hash1[i] = min1
    hash2[j] = min2

    min1, min2,i,j = get_second_min(ar1,ar2,i,j)

    hash_2 = Hash.new
    
    hash1[i] = min1
    hash2[j] = min2

    keys1 = hash1.keys
    keys2 = hash2.keys

    x1 = keys1[0] 
    x2 = keys1[1]

    y1 = keys2[0]
    y2 = keys2[1]



    if x1 != y1
      sum_1 = hash1[x1] + hash2[y1]
    elsif
      sum_1 = hash1[x1] + hash2[y2]
    end

     if x2 != y1
      sum_2 = hash1[x2] + hash2[y1]
    elsif
      sum_2 = hash1[x2] + hash2[y2]
    end

    if sum_1 < sum_2
      min_sum = sum_1
    else
      min_sum = sum_2
    end
    
    return min_sum
  end



end
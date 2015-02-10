# Solving this problem in O(1) space requires understanding 
# a triangular series.

def find_appears_twice(numbers_array)
  appearance_hash = {}
  numbers_array.each do |num|
    if appearance_hash[num] == nil
      appearance_hash[num] = true
    elsif appearance_hash[num] == true
      return num 
    end
  end
end

test_array = [1,2,3,6,4,7,8,8,9,10]
puts find_appears_twice(test_array)

test_array = [1,2,3,2]
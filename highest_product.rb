def highest_product(array_of_ints)
  two_lowest_ints = [ array_of_ints[0], array_of_ints[1] ]
  three_highest_ints = [ array_of_ints[0], array_of_ints[1], array_of_ints[2] ] 

  array_of_ints[2..-1].each do |int|
    if int > three_highest_ints.min
      three_highest_ints[three_highest_ints.each_with_index.min[1]] = int
    end 
    if int < two_lowest_ints.max
      two_lowest_ints[two_lowest_ints.each_with_index.max[1]] = int
    end
  end

  puts two_lowest_ints
  puts three_highest_ints
  lowest_product =  two_lowest_ints.inject(:*) * three_highest_ints.max
  highest_product = three_highest_ints.inject(:*) 
  return [lowest_product, highest_product].max
  
end

puts highest_product([1,67,3,-1000,-2,82,9])


#============================================
# THIS WAS MY FIRST ATTEMPT:
# def find_highest_product(array_of_ints)
#   placeholder_array = [ array_of_ints[0],array_of_ints[1],array_of_ints[2] ]
#   placeholder_array = sort_array(placeholder_array)


#   array_of_ints[3..array_of_ints.size-1].each do |integer|
#     if integer > placeholder_array[0]
#       placeholder_array[0] = integer
#       placeholder_array = sort_array(placeholder_array)
#     end
#   end
#   puts placeholder_array
#   placeholder_array[0] * placeholder_array[1] * placeholder_array[2]

# end

# def sort_array(placeholder_array)
#   if placeholder_array[0] > placeholder_array[1]
#     placeholder_array[0],placeholder_array[1] = placeholder_array[1],placeholder_array[0]
#   end
#   if placeholder_array[1] > placeholder_array[2]
#     placeholder_array[1],placeholder_array[2] = placeholder_array[2],placeholder_array[1]
#   end
#   if placeholder_array[0] > placeholder_array[1]
#     placeholder_array[0],placeholder_array[1] = placeholder_array[1],placeholder_array[0]
#   end
#   placeholder_array
# end

# puts find_highest_product([1,3,5])

# puts find_highest_product([-1,7,200,500,5,100,-10000])


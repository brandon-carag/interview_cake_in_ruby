def find_highest_product(array_of_ints)
  placeholder_array = [ array_of_ints[0],array_of_ints[1],array_of_ints[2] ]
  placeholder_array = sort_array(placeholder_array)


  array_of_ints[3..array_of_ints.size-1].each do |integer|
    if integer > placeholder_array[0]
      placeholder_array[0] = integer
      placeholder_array = sort_array(placeholder_array)
    end
  end
  puts placeholder_array
  placeholder_array[0] * placeholder_array[1] * placeholder_array[2]

end

def sort_array(placeholder_array)
  if placeholder_array[0] > placeholder_array[1]
    placeholder_array[0],placeholder_array[1] = placeholder_array[1],placeholder_array[0]
  end
  if placeholder_array[1] > placeholder_array[2]
    placeholder_array[1],placeholder_array[2] = placeholder_array[2],placeholder_array[1]
  end
  if placeholder_array[0] > placeholder_array[1]
    placeholder_array[0],placeholder_array[1] = placeholder_array[1],placeholder_array[0]
  end
  placeholder_array
end

puts find_highest_product([1,3,5])

puts find_highest_product([-1,7,200,500,5,100,-10000])


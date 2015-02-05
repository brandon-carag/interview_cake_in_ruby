large_array = ["negative","nonsense","nettles","octagon","octopus","pokemon","wilbur","zebra","abaline","apple","banana","cat","david","elephant","lamb","larry"]
#How do we identify when items are adjacent?

def find_rotation_point(array,starting_index,ending_index)
  midpoint_index = starting_index + ((ending_index - starting_index)/2) 
  puts "The starting index is: #{starting_index}.  The ending index is: #{ending_index}.  The midpoint is #{midpoint_index}"

  if ending_index - starting_index == 1
    return ending_index 
  elsif array[starting_index] < array[midpoint_index]
    find_rotation_point(array, midpoint_index, ending_index)
  elsif array[starting_index] > array[midpoint_index]
    find_rotation_point(array, starting_index, midpoint_index)
  end

end

find_rotation_point(large_array, 0, large_array.size - 1)

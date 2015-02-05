my_array     = [3,4,6,10,11,15]
alices_array = [1,5,8,12,14,19]

def merge_arrays(array1,array2)
  index_placeholder_1 = array1.size - 1
  index_placeholder_2 = array2.size - 1
  results_array = []

  while index_placeholder_1 >= 0 && index_placeholder_2 >= 0
  
    if array1[index_placeholder_1] > array2[index_placeholder_2]
      results_array << array1[index_placeholder_1]
      index_placeholder_1 -= 1
    else
      results_array << array2[index_placeholder_2]
      index_placeholder_2 -= 1
    end

  end

  if index_placeholder_1 > index_placeholder_2
    while index_placeholder_1 >= 0
      results_array << array1[index_placeholder_1]
      index_placeholder_1 -= 1
    end
  else
    while index_placeholder_2 >= 0 
      results_array << array2[index_placeholder_2]
      index_placeholder_2 -= 1
    end
  end
  
  new_index = results_array.size - 1 
  ordered_array = []  
  results_array.each do |element| 
    ordered_array << results_array[new_index]
    new_index -= 1
  end 

  ordered_array
end

# merge_arrays(my_array, alices_array)
puts merge_arrays(my_array,alices_array)
# prints [1,3,4,5,6,8,10,11,12,14,15,19]
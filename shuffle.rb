# Assume we have access to the following random number generator
get_random(floor, ceiling)

# The tricky thing about this problem is that when we make three distinct calls to the get_random
# function, assuming we have an array like [a, b, c].  Calculating the probabilities
# gives us 3 * 3 * 3 = 27.  However, we have only 6 possible outcomes (e.g. 1 * 2 * 3).  27 is
# not evenly divisible by 6 and so we certainly know that some outcomes are more probable than
# other outcomes if we're calling the get_random function 3 times using the same indexes.

def shuffle(array)
  return array if array.size <= 1

  last_index_position = array.size - 1
  array.each_with_index do |element, index|
    random_position = get_random(element, last_index_position)
    array[element_index] = array[element], array[random_position] = array[random_position], array[element]
  end

  return array
end
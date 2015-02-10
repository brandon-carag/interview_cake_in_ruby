def all_permutations(input_string) 
  num_iterations = input_string.size
  iteration_counter = 0
  while iteration_counter < num_iterations
    input_string.each_char do |char|
      char = ====
    end
  end
end


# This funciton is basically calculating all the permutaitons from 1 character to the size of the string
# 
def get_permutations(string)

  # Base case comes down to when we have nothing left but a single character
  if string.size <= 1
    return [string]
  end

  # Get all the chars except the last
  all_chars_except_last = string.slice(0,string.size - 1)
  # Get the last char
  last_char = string[-1]

  # recursive call: get all possible permutations for all chars except last
  # Basically, work down so there's only a single character left.
  permutations_of_all_chars_except_last = get_permutations(all_chars_except_last)

  # put the last char in all possible positions for each of the above permutations
  possible_positions_to_put_last_char = (0..all_chars_except_last.size)

  # iterate through all_chars_exept_last 
  permutations_of_all_chars_except_last.each do |permutation|
    # iterate through all positions
    possible_positions_to_put_last_char.each do |position|
      #calculate the permutation by concatenating the string
      permutation = permutation_of_all_chars_except_last.splice(0,last_char) + last_char + permutations_of_all_chars_except_last.splice(last_char,permutations_of_all_chars_except_last.size)
      #append the string to the permutations
      permutations.append(permutation)
    end
  end

  return permutations

end
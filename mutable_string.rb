

def reverse_characters(string)
  swap_position1 = 0
  swap_position2 = string.size - 1
  while swap_position2 - swap_position1 > 1
    puts "iteration"
    string[swap_position1],string[swap_position2] = string[swap_position2],string[swap_position1]
    swap_position1 += 1
    swap_position2 -= 1
  end
  puts string

  
  #We have a sequence of words that are reversed.
  #hello world
  #"dlrow olleh"
  #How do we iterate through this string in place to make sure things are good

end

def reverse_inside_strings(string)
  word_index1 = 0
  word_index2 = 0 

  string.each_char do |char|
    if char == " " || 
      index_placeholder = word_index2
      word_index2 -= 1
       while word_index2 - word_index1 > 1
        string[word_index1],string[word_index2] = string[word_index2],string[word_index1]
        word_index1 += 1
        word_index2 -= 1
      end
      word_index1 = index_placeholder + 1
      word_index2 = index_placeholder + 1
    else
      word_index2 += 1
    end
  end
  puts string
end

reverse_inside_strings("dlrow olleh")

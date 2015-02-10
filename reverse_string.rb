def reverse_string(string)
  crawler1 = 0
  crawler2 = string.size - 1

  while crawler2 - crawler1 >= 2
    string[crawler1],string[crawler2] = string[crawler2],string[crawler1]
    puts string
    crawler1 += 1
    crawler2 -= 1
  end

  string
end


puts reverse_string("hello") # => olleh
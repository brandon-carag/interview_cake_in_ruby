def palindrome?(input_string)
  #Check whether the manipulation of an input string will yield
  character_hash = {}
  input_string.each_char do |char|
    if character_hash[char] == nil
      character_hash[char] = 1
    elsif character_hash[char] == 1
      character_hash.delete(char)
    end
  end

  return character_hash.size <= 1
end

puts palindrome?("civic") #true
puts palindrome?("ivicc") #true
puts palindrome?("civil") #true
puts palindrome?("livci") #true
puts palindrome?("o") #true



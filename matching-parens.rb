def find_closing_parens_index(string, opening_paren_position)
  parens_stack = []
  return_value = "dummy return value"
  string.each_char.with_index do |char,index|
    puts "parens_stack: #{parens_stack}"
    if char == '(' 
      parens_stack << index
    elsif char == ')'
      test_value = parens_stack.pop
      if test_value == opening_paren_position
        return index
      end 
    end
  end
  return_value
end

puts find_closing_parens_index("(Hi) my name is (B(rand)on)",18)
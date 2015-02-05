def factorial(number)
  if number == 1
    return 1
  else
    number * factorial(number - 1)
  end
end

puts factorial(7) # => 5040
puts factorial(10) # => 3628800
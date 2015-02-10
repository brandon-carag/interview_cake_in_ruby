def rand7
  [1,2,3,4,5,6,7].sample
end

def rand5
  random_val = rand7 
  while random_val == 6 || random_val == 7
    random_vam = rand7
  end


  modulus = random_val % 5 
  if modulus == 0
    return 5
  else
    return modulus 
  end
  end 

end

test_array = []
200.times do 
test_array << rand5
end

puts test_array
def calc_num_ways(amount, denominations_array)
  num_ways
  denomination_quantity_hash = {}
  denominations_array.each do |denomination|
    denomination_quantity_hash[denomination] = 0
    # Increment the number of coins for x
    # Check whether calc_amount(denomination_quantity_hash) == amount
  end

  num_ways
end


def calc_amount(denomination_quantity_hash)
  total_amount = 0
  denomination_quantity_hash.each do |denomination,quantity|
    puts "#{denomination} * #{quantity} = #{denomination * quantity}" 
    total_amount += denomination * quantity
  end
  total_amount
end


# calc_amount({1=>1,2=>1})
num_ways(10,[1,2,3])



def num_ways(amount, denominations):
  denominations.each do |denomination|
    denomin
  end
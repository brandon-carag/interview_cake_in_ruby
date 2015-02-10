stockPricesYesterday = [3,5,1,100,8,9]

def find_best_profit(array)
  max_profit = 0
  min_price = array[0]

  array.each_with_index do | price,index |
    #Think of the next two lines of code as independent, rather than contingent on one another:
    min_price = price if price < min_price
    max_profit = price - min_price if (price - min_price) > max_profit
    #If a price was the new minimum price, we would never have a max profit for evaluation greater than 0
    #and we would still be keeping the previous max price.
  end

  max_profit
end

puts find_best_profit stockPricesYesterday


#THE LOGIC:

#initialize a minimum price to be at index 0
#initialize maximum profit to be 0
#iterate through each array element, checking the following:

#set current_price = index under examination
#keep track of the minimum price by checking whether the index under examination is lower than the stored value
#Make sure the max profit is updated by checking whether the current_price - minimum price is greater than the previously stored value

#return the max profit


# Below, see my own concoction of the solution.
def calc_best_profit(stock_prices)

  max_profit = 0
  lowest_price_yet = stock_prices[0]
  highest_price_yet = stock_prices[0] 

  stock_prices.each do |price|
    if price > highest_price_yet
      highest_price_yet = price
      max_profit = [(highest_price_yet - lowest_price_yet), max_profit].max
    elsif price < lowest_price_yet
      lowest_price_yet = price
    end
    puts "New Max: #{highest_price_yet}" 
    puts "New Min: #{lowest_price_yet}"
    puts "New Max Profit: #{max_profit}"
  end

  return max_profit
end

puts "Best Profit: #{calc_best_profit( [1,3,3,7,20,3,2,40,1,9,7] )}"
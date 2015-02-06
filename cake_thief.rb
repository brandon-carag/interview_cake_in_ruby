# cake_tuples = [ [7,160], [3,90], [2,15] ]
# [7, 160] weighs 7 kg and has a value of 160GBP 

def max_monetary_value(cake_tuples, capacity)

  # Calc GBP/kg ratios for all cakes
  # Find a way to represent value of each cake--hash w/integers? 
  # Fill the bag with the most valuable cakes as we can
  most_valuable_cake_indexes = []
  # We iterate through the cake_tuples and incrementally calculate their values
  # Do quicksort to sort cakes
  # When iterating, we can note if there are any caks that weight nothing and have
  # a value greater than 0, if so
  # we would take an infinite amount of these cakes and return "Infinite cakes"


  # Pretend cake_tuples is ordered
  capacity_left = capacity
  monetary_value = 0
  cake_tuples.each do |cake_tuple|
    break if capacity_left == 0
    num_cakes = capacity_left / cake_tuple[0]
    if num_cakes > 0 
      monetary_value += num_cakes * cake_tuple[1] 
      capacity_left -= num_cakes * cake_tuple[0] 
    end
  end

  monetary_value
  end

cake_tuples = [ [3,1000], [5,500], [1,10] ]
puts "testing monetary value"
puts max_monetary_value(cake_tuples, 20)



# Is there a way for us to incrementally fill our duffel bag with the highest value cakes, 
# throwing some cakes out if we find higher value cakes?

# Perhaps we could store max GBP/kg ratio, the trick would be to know 
# which collection of cakes to throw out, and whether that would be indeed
# Perhaps a stack of cakes to model cakes we've added, but we have to worry
# about also keeping that stack of cakes in order as they're added.
# I'm inclined to think it would be best to execute quicksort on the 
# most valuable cake indexes and then iterate through it, best case O log n
# worst case would be O n.

#========== 52:00
# Consider what's happening:
# Is it as simple as having a collection of what happens when we have
# a function that represents the best option at a specific cake weight
# This is obvious at the 1kg level, and perhaps at the 2kg level.
# in both situations, he's referencing max_value_at_capacity_2
# 

def max_duffel_bag_value(cake_tuples, weight_capacity)

  max_values_at_capacities = (1..weight_capacity + 1).to_a
  max_values_at_capacities.each { |max_values| max_values_at_capacities[max_values] = 0 }

  (1..weight_capacity).to_a.each do |current_capacity|

    current_max_value = 0
    cake_tuples.each do |cake_tuple|
      # We go through each cake, 
      if cake_tuple[0] <= current_capacity
        # This line is testing a max value by checking whether the cake's value + the remaining 
        capacity_left = current_capacity - cake_tuple[0] 
        max_value_using_cake = cake_tuple[1] + max_values_at_capacities[capacity_left]
        current_max_value = [max_value_using_cake, current_max_value].max
        puts "current max value equal to #{current_max_value}"
      end
    end

    max_values_at_capacities[current_capacity] = current_max_value
    puts "max_values_at_capacities: #{max_values_at_capacities}"
  end

  max_values_at_capacities[weight_capacity]
end

puts "=========================================="
puts "Testing Dynamic Programming Style Solution"
cake_tuples = [ [1,10],[1,20],[2,35],[2,45]]
puts max_duffel_bag_value(cake_tuples, 7)

def brandons_attempt_at_solving_the_unbounded_knapsack(cake_tuples, max_capacity)
  # Take a bottom-up algorithmic approach
  # You'll need a nested loop
  # Establish a current_max_value
  # Establish a hash with max values for every weight increment
  capacity_max_values_hash = {}
  changing_max = 0
  capacity_hash.each do |capacity, max_value|
    cake_tuples.each do |cake_tuple|
      value_if_we_take = cake_tuple[1] + capacity_max_values_hash[(max_capacity - cake_tuple[0])]
      changing_max = [value_if_we_take, changing_max].max
    end
    # This one line allows us to collectively leverage the max values we've calculated.
    capacity_max_values_hash[capacity_left] = changing_max
  end
  # Begin iterating through each cake, starting from the bottom calculating the maximum value
  # At the end of the loop, we should have knowledge of the max_value for that specific weight

  # Next, the outer loop will change the weight increment up one level.
  # Note we've already calculated the maximum value for everything at the specific weight level of one
  
  # The remaining question I have, is how is it that we're accounting for the possibility of 
  # having multiple cakes of the same value?  For example, let's say we had a cake that only took
  # up a pound and was worth 10M (far more than any of the other cakes).  In what iteration through 
  # the loops would that be accounted for in? I think it's accounted for in the fact that the 
  # 
end












































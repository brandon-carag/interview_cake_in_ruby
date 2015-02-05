require 'pry'

def get_products_of_all_ints_except_at_index(array)
  result = []

    array.each_with_index do |integer,index|
      result << return_product_without_index(index, array)
    end

  puts result.inspect
end


def return_product_without_index(index_to_avoid, array)
  product = nil

    array.each_with_index do |integer,index|
      if index == index_to_avoid
      elsif product == nil
        product = integer
      else
        product = product * integer
      end  
    end

  product
end


get_products_of_all_ints_except_at_index([1,0,5,7])
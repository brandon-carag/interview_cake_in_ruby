# Option 1: Standard Fibonacci, but expensive O 2^n cost
def fib(n)
  return n if n < 2
  fib(n-1) + fib(n-2)
end

# Option 2: Memoizing Fibonacci by wrapping it in a class
class Fibber  
  attr_accessor :memo

  def initialize
    @memo = {}
  end

  def fib(n)

    # Base Case
    if n < 0
      raise "An error has occurred"
    elsif n == 0 || n == 1
      return n
    end

    # Check whether memoized value exists in the hash
    if self.memo[n] != nil
      puts "grabbing memoized value #{n}"
      return self.memo[n]
    end

    puts "computing fib #{n}"
    # Recursive call 
    result = self.fib(n-1) + self.fib(n-2)

    # Memoize the value in the hash
    self.memo[n] = result

    return result
  end

end

# Option 3: Bottom-Up Fibonacci
def bottoms_up_fibbonacci(n)
  raise "n must be a positive integer" if n < 0
  return n if n == 1 || n == 2

  prevprev = 0 
  prev = 1
  current = 0

  (0..n).to_a.each do |fib_num|
    current = prevprev + prev
    prevprev = prev
    prev = current
  end

  return current 

end

puts "Testing Bottoms Up Fibonacci"
puts bottoms_up_fibbonacci(0)
puts bottoms_up_fibbonacci(1)
puts bottoms_up_fibbonacci(2)
puts bottoms_up_fibbonacci(3)
puts bottoms_up_fibbonacci(4)
puts bottoms_up_fibbonacci(5)

puts "Testing Memoized Fibonacci"
fibber = Fibber.new
puts fibber.fib(0)
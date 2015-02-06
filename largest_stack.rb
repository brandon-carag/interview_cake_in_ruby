class Stack
  attr_accessor :items, :max, :walkback_count, :previous_max_stack, :walkback_hash

  def initialize
    self.items = []
    self.max = 0
    self.walkback_count = 0
    self.previous_max_stack = []
    self.walkback_hash = {} #previous max => walkback_steps
  end

  def push(item)
    self.items.push(item)
    self.walkback_count += 1
    if item > self.max
      self.previous_max_stack.push(self.max)
      self.max = item
      self.walkback_hash[self.max] = self.walkback_count
      self.walkback_count = 0
    end
    puts "walkback_count:#{self.walkback_count}"
  end

  def pop
    if self.items.pop == self.max
      self.max = self.previous_max_stack.pop
      self.walkback_count = self.walkback_hash[self.max]
      # I believe the code below was a logical misstep:
      # ===================
      # stack_for_processing = []
      # self.walkback_count.times do
      #   stack_for_processing.enqueue(self.items.pop)
      # end
      # self.walkback_count = 0
      # while stack_for_processing.size != 0
      #   self.items.push(stack_for_processing.shift)
      # end
    end
    puts "popped walkback_count:#{self.walkback_count}"
  end

  def peek
    self.items[self.items.size - 1]
  end

  def get_max
    self.max
  end

end

new_stack = Stack.new
new_stack.push(1)
new_stack.push(2)
new_stack.push(5)
new_stack.push(10)
new_stack.push(9)
new_stack.push(3)
new_stack.push(4)
new_stack.push(100)
new_stack.pop
new_stack.pop
new_stack.pop
new_stack.pop
new_stack.pop
puts "New Max: #{new_stack.get_max}"
puts "New Walkback: #{new_stack.walkback_count}"
puts "Walkback_hash: #{new_stack.walkback_hash}"


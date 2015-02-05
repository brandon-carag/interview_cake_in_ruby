# Every node must satisfy the following:
# node.left < node.value
# node.right > node.value

# the base case must return false up through the call stack
# We have to create a situation where the false cascades

def valid_binary_tree(node)
  if node != nil
    return false if node.left_node.value >= node.value || node.right_node.value <= node.value
  else
    return false if valid_binary_tree(node.left_node) == false
    return false if valid_binary_tree(node.right_node) == false
  end
  true
end


#Per Interview Cake

def bst_checker(root)
  stack = [root, -100000, 100000]

  while stack.size != 0
    node = stack.pop

    if node.value < lower_bound || node.value > upper_bound
      stack.push((node.left,))


  end

end
def reverse_linked_list(node)

  next_node_placeholder = node.next
  node.next = nil
  saved_prev = node
  node = next_node_placeholder

  while node.next_node != nil
    next_node_placeholder = node.next
    node.next = prev
    saved_prev = node
    node = next_node_placeholder
  end

  node.next = saved_prev 
  return node
end
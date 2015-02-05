def delete_node(node)
  next_node_value = node.next.value
  next_node_pointer = node.next.next
  node.value = next_node_value
  node.next = next_node_pointer
end

#Key Considerations:
# Any references to the input node have now effectively been reassigned to its next node. In our example, we "deleted" the node assigned to the variable b, but in actuality we just gave it a new value (2) and a new next! If we had another pointer to b somewhere else in our code and we were assuming it still had its old value (8), that could cause bugs.
# If there are pointers to the input node's original next node, those pointers now point to a "dangling" node (a node that's no longer reachable by walking down our list). In our example above, c is now dangling. If we changed c.value, we'd never encounter that new value by walking down our list from the head to the tail.
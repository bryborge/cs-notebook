# frozen_string_literal: true

# A list is a linked data structure (sometimes referred to as linked-list).
# It is a linear data structure, in which the elements are not stored at
# contiguous memory locations.
#
# A list maintains a pointer to a head node. The last node is called the "tail."
# If the list is empty, the head node must point to nil.
class List
  attr_accessor :head

  def initialize
    @head = nil
  end

  # Append a new element to the end of the list.
  #
  # @param data [Object] The data to append.
  # @return [void]
  def append(data)
    new_node = Node.new(data)

    if head.nil?
      self.head = new_node
    else
      current = head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  # Remove an element from the list.
  #
  # @param data [Object] the data to remove.
  # @return [void]
  def remove(data)
    return if head.nil?

    if head.data == data
      self.head = head.next_node
      return
    end

    current = head

    while current.next_node&.data != data
      current = current.next_node
    end

    current.next_node = current.next_node.next_node if current.next_node
  end

  # Display the contents of the list.
  #
  # @return [void]
  def display
    elements = []
    current  = head

    while current
      elements << current.data
      current = current.next_node
    end

    puts elements.join(' -> ')
  end
end

# A list is comprised of nodes which contains data and a reference
# (or pointer) to the next node.
class Node
  attr_accessor :data, :next_node

  # If there is no next node, point to nil.
  def initialize(data)
    @data = data
    @next_node = nil
  end
end

################################################################################
# Example Usage

list = List.new

list.append(1)
list.append(2)
list.append(3)

list.display  # Output: 1 -> 2 -> 3

list.remove(2)

list.display  # Output: 1 -> 3

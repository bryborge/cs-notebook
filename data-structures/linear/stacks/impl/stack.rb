# frozen_string_literal: true

# A stack is a linear data structure that operates on the Last In, First Out
# (LIFO) principle.
class Stack
  def initialize
    @elements = []
  end

  # Push an element onto the stack.
  #
  # @param element [Object] The element to push.
  def push(element)
    @elements.push(element)
  end

  # Pop an element off the stack.
  #
  # @return element [Object] The popped element.
  def pop
    return nil if empty?
    @elements.pop
  end

  # Peek at the top element of the stack without removing it.
  #
  # @return [Object, nil] The top element or nil if the stack is empty.
  def peek
    return nil if empty?
    @elements.last
  end

  # Check if the stack is empty.
  #
  # @return [Boolean] true if the stack is empty, false otherwise.
  def empty?
    @elements.empty?
  end

  # Get the size of the stack.
  #
  # @return [Integer] The size of the stack.
  def size
    @elements.size
  end

  # Clear the stack.
  #
  # @return [void] An empty stack.
  def clear
    @elements.clear
  end
end

################################################################################
# Example Usage

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)

puts stack.pop   # => 3
puts stack.peek  # => 2
puts stack.size  # => 2
puts stack.empty?  # => false

stack.pop
stack.pop
puts stack.empty?  # => true

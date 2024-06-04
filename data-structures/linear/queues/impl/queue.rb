# frozen_string_literal: true

# A queue is a linear data structure that operates on the First In, First Out
# (FIFO) principle.
class Queue
  def initialize
    @elements = []
  end

  # Enqueue an element to the back of the queue.
  #
  # @param element [Object] The data to enqueue.
  # @return elements [Object] The enqueued elements.
  def enqueue(element)
    @elements.push(element)
  end

  # Dequeue an element from the front of the queue.
  #
  # @return [Object, nil] The dequeued element or nil if the queue is empty.
  def dequeue
    return nil if empty?
    @elements.shift
  end

  # Show the front element of the queue without removing it.
  #
  # @return [Object, nil] The front element or nil if the queue is empty.
  def peek
    return nil if empty?
    @elements.first
  end

  # Check if the queue is empty.
  #
  # @return [Boolean] true if the queue is empty, false otherwise.
  def empty?
    @elements.empty?
  end

  # Get the size of the queue.
  #
  # @return [Integer] The size of the queue.
  def size
    @elements.size
  end
end

################################################################################
# Example Usage

queue = Queue.new
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)

puts queue.dequeue  # => 1
puts queue.peek     # => 2
puts queue.size     # => 2
puts queue.empty?   # => false

queue.dequeue
queue.dequeue
puts queue.empty?   # => true

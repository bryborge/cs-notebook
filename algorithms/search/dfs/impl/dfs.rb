# frozen_string_literal: true

require 'set'

# Performs a Depth-First Search (DFS) on a graph starting from a given node.
# This method uses a stack to manage the traversal order and a set to track visited nodes.
# It prints each node as it is visited.
#
# @param graph [Hash] The adjacency list representing the graph, where keys are nodes
#                     and values are arrays of adjacent nodes.
# @param start [String] The starting node for the DFS traversal.
def depth_first_search(graph, start)
  stack   = [start]
  visited = Set.new

  while stack.any?  
    node = stack.pop

    next if visited.include?(node)

    # Process the node (e.g., print it) and mark it as 'visited'
    puts node
    visited.add(node)

    # Add all unvisited neighbors of the current node to the stack.
    # We reverse the order to maintain the correct traversal order since
    # the stack is LIFO (Last In, First Out).
    graph[node].reverse.each do |neighbor|
      stack.push(neighbor)
    end
  end
end

################################################################################
# Example Usage

#     A
#    / \
#   B   C
#  / \   \
# D   E   F
graph = {
  'A' => ['B', 'C'],
  'B' => ['D', 'E'],
  'C' => ['F'],
  'D' => [],
  'E' => [],
  'F' => []
}

start = 'A'

puts "DFS Traversal starting from node '#{start}':"
depth_first_search(graph, start)

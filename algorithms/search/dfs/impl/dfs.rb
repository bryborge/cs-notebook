# frozen_string_literal: true

require 'set'

# Performs a Depth-First Search (DFS) on a graph starting from a given node.
# This method uses a stack to manage the traversal order and a set to track visited nodes.
# It prints each node as it is visited.
#
# @param graph [Hash] The adjacency list representing the graph, where keys are nodes
#                     and values are arrays of adjacent nodes.
# @param start_node [String] The starting node for the DFS traversal.
def depth_first_search(graph, start_node, target)
  stack   = [start_node]
  visited = Set.new

  until stack.empty?
    current_node = stack.pop

    # Skip nodes that have already been visited
    next if visited.include?(current_node)

    # Return the target node if it has been found
    return current_node if current_node == target

    # Process the current node (e.g., print it) and mark it as 'visited'
    puts current_node
    visited.add(current_node)

    stack.concat(graph[current_node].reverse)
  end

  nil
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
target = 'F'

puts "DFS Traversal starting from node '#{start}':"
depth_first_search(graph, start, target)

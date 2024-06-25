# frozen_string_literal: true

# Find the shortest path between two nodes in a graph. Uses an array-based implementation of Dijkstra's algorithm.
#
# @param graph [Hash] The adjacency list representing the graph, where keys are nodes
#                     and values are arrays of adjacent nodes.
# @param start [String] The starting node for the shortest path search.
# @param goal [String] The ending node for the shortest path search.
def dijkstra(graph, start, goal)
  distances      = {}
  previous_nodes = {}
  nodes          = graph.keys

  # Initialize the distance of each node to infinity and the previous node to nil.
  nodes.each do |node|
    distances[node]      = Float::INFINITY
    previous_nodes[node] = nil
  end

  distances[start] = 0

  # Main: Loop over all nodes (until the goal is found).
  until nodes.empty?
    # Select the node with the smallest distance.
    # Break if the goal is found, otherwise remove the selected node from the nodes list.
    closest_node = nodes.min_by { |node| distances[node] }
    break if distances[closest_node] == Float::INFINITY
    nodes.delete(closest_node)

    # For each neighbor of the selected node:
    #   - If the new distance to the neighbor is less than the current distance to the neighbor
    #       - Update the distance and previous node.
    graph[closest_node].each do |neighbor, weight|
      alt = distances[closest_node] + weight

      if alt < distances[neighbor]
        distances[neighbor]      = alt
        previous_nodes[neighbor] = closest_node
      end
    end
  end

  # Reconstruct the shortest path.
  path    = []
  current = goal

  until current.nil?
    path.unshift(current)
    current = previous_nodes[current]
  end

  path
end

################################################################################
# Example Usage

weighted_graph = {
  'A': { 'B': 5, 'C': 2 },
  'B': { 'A': 5, 'C': 2, 'D': 1 },
  'C': { 'A': 2, 'B': 2, 'D': 4, 'E': 8 },
  'D': { 'B': 1, 'C': 4, 'E': 3, 'F': 6 },
  'E': { 'C': 8, 'D': 3 },
  'F': { 'D': 6 }
}
start = :A
goal = :F

puts "Shortest path from #{start} to #{goal}:"
dijkstra(weighted_graph, start, goal)

# frozen_string_literal: true

def breadth_first_search(graph, start_node, target)
  queue   = [start_node]
  visited = []

  until queue.empty?
    current_node = queue.shift

    # Found our target, return
    return current_node if current_node == target

    # Process the node (e.g., print it) and mark it as 'visited'
    puts current_node
    visited << current_node

    graph[current_node].each do |neighbor|
      queue << neighbor unless visited.include?(neighbor) || queue.include?(neighbor)
    end
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

puts "BFS Traversal starting from node '#{start}':"
breadth_first_search(graph, start, target)

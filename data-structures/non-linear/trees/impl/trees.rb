# frozen_string_literal: true

# Adjacency List
tree = {
  'A' => ['B', 'C'],
  'B' => ['D', 'E'],
  'C' => ['F', 'G'],
  'D' => [],
  'E' => [],
  'F' => [],
  'G' => []
}

# Adjacency Matrix
tree_matrix = [
  [0, 1, 1, 0, 0, 0, 0],
  [1, 0, 1, 1, 0, 0, 0],
  [1, 1, 0, 1, 1, 0, 0],
  [0, 1, 1, 0, 1, 1, 0],
  [0, 0, 0, 1, 0, 1, 1],
  [0, 0, 0, 1, 1, 0, 1],
  [0, 0, 0, 0, 1, 1, 0]
]

# Parent Array
tree_parent = [-1, 0, 0, 1, 2, 3, 3]

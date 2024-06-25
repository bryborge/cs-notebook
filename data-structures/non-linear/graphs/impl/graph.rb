# frozen_string_literal: true

# Adjacency List - Unweighted
graph = {
  'A' => ['B'],
  'B' => ['C', 'D'],
  'C' => ['E'],
  'D' => ['E'],
  'E' => ['F', 'G'],
  'F' => [],
  'G' => []
}

# Adjacency List - Weighted
graph = {
  'A': { 'B': 2 },
  'B': { 'C': 3, 'D': 1 },
  'C': { 'E': 4 },
  'D': { 'E': 2 },
  'E': { 'F': 1, 'G': 3 },
  'F': {},
  'G': {}
}

# Adjacency Matrix
graph_matrix = [
  [0, 2, 0, 0, 0, 0, 0],
  [2, 0, 3, 1, 0, 0, 0],
  [0, 3, 0, 4, 0, 0, 0],
  [0, 1, 0, 0, 2, 0, 0],
  [0, 0, 4, 2, 0, 1, 3],
  [0, 0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 3, 0, 0]
]

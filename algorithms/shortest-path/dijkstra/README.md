# Dijkstra's Algorithm

## Summary

Dijkstra's Algorithm is used to find the shortest distance between two vertices of a weighted graph.

| Advantages | Disadvantages |
|------------|---------------|
| Considered to have low complexity | Can't be used with graphs containing negative weights |

## Pseudocode

1.  Initialize
    1.  Create an array to store distances from the source of each node
    2.  Mark all of the nodes as unvisited
    3.  Set the distance to the source node as `0` and `Infinity` for all other nodes
2.  Main loop
    1.  Find the unvisited node with the smallest known distance
    2.  Update the distances of its unvisited neighbors
    3.  Mark the current node as visited

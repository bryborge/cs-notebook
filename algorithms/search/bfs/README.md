# Breadth-First Search

## Summary

Breadth-first search is used for traversing or searching tree or graph data structures. The algorithm begins at the root
node and explores all the vertices of the current depth before moving on to explore the vertices of the next level.

| Advantages | Disadvantages |
|------------|---------------|
| If the target or solution exists, it will definitely find it | It is severely space-bound in practice so will exhaust the memory available on typical computers in a matter of minutes |
| If there are more than one solutions, it will reveal the one requiring the least number of steps |  |

### Complexity Analysis

*   **Time Complexity:** `O(V + E)` where `V` is the number of vertices and `E` is the number of edges in the graph.

## Requirements

*   A **Starting Node**
    *   e.g., A way to represent the graph (such as **Adjacency List** or **Adjacency Matrix**) and a start location
*   A **Traversal Mechanism**
    *   A way to visit nodes, check neighbors, and track visited nodes (such as **Boolean array** or **Set**)
*   A stack of nodes to be processed

## Pseudocode

1.  **Initialization**
    *   A `queue` is initialized to keep track of the vertices to explore
    *   A `visited` array is initialized to keep track of the vertices that have been visited (to avoid unnecessarily processing an item more than once or getting caught in an infinite loop)
2.  **Main Loop**
    *   The algorithm runs as long as there are vertices in the queue
3.  **Target Check**
    *   If the current vertex is the target, return it and end the loop
4.  **Process Neighbors**
    *   For each neighbor of the current vertex, if the neighbor has not been visited, mark it visited and enqueue
5.  **Completion**
    *   If the loop completes without finding the target, it returns `null`.

# Depth-First Search

## Summary

Depth-first search is used for traversing or searching tree or graph data structures. The algorithm begins at the root
node and explores as far as possible along each branch before backtracking.

| Advantages | Disadvantages |
|-|-|
| Memory requirement is only linear with respect to the search graph. | Depth-First Search is not guaranteed to find the target. |
| The time complexity of depth `d` and branching factor `b` is `O(bd)` since it generates the same set of nodes as breadth-first search, but in a different order. | May travel down the left path infinitely without a cutoff. |

### Complexity Analysis

*   **Time Complexity:** `O(V + E)`, where `V` is the number of vertices and `E` is the number of edges in the graph.

## Requirements

*   A **Starting Node**
    *   e.g., A way to represent the graph (such as **Adjacency List** or **Adjacency Matrix**) and a start location
*   A **Traversal Mechanism**
    *   A way to visit nodes, check neighbors, and track visited nodes (such as **Boolean array** or **Set**)
*   A stack of nodes to be processed

## Pseudocode

1.  **Initialize** a stack with the starting node
2.  **While** the stack is not empty:
    1.  **Pop** a node from the stack
    2.  **If** the node has not been visited:
        1.  **Mark** the node as visited
        2.  **Process** the node
        3.  **For each** neighbor of the node:
            1.  **If** the neighbor has not been visited:
                1.  **Push** the neighbor onto the stack
3.  **Terminate** when all nodes have been visited or the target node is found


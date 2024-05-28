# Selection Sort

## Summary

Selection sort selects the smallest element from the unsorted portion of a list and swaps it with the first element of the unsorted portion. This process repeats until the entire list is sorted.

| Advantages | Disadvantages |
|------------|---------------|
| Simple and easy to understand | Does not preserve the relative order of items with equal keys |
| Great for small datasets | Not ideal for large datasets due to time complexity |

### Complexity Analysis

*   **Time Complexity:** `O(N2)` as there are two nested loops.

## Requirements

*   Elements in the array should all be of the same type.

## Pseudocode

### Finding the Smallest Value

This is the first (inner) loop.

1.  **Store** the index of the smallest value in a variable
2.  **Loop** over all the items in the array
    1.  **If** the current item is smaller than th value stored at the smallest value index, update the index of the smallest value variable
3.  **Return** the index of the smallest value

### Selection Sort

This is the second (outer) loop.

1.  **Create** a variable that will store a new array
2.  **Loop** over all the items in the given array
    1.  **Find** the smallest value and **append** it to the new array
3.  **Return** the new array

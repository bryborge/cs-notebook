# Quick Sort

## Summary

Quick sort is a sorting algorithm based on the "Divide and Conquer" strategy that picks an element as a pivot and
partitions the given array around the pivot by placing it in it's correct position in the sorted array.

The key process in quick sort is the `partition`, which aims to place the pivot at its correct position in the sorted
array (placing all smaller elements to the left of the pivot and placing all larger elements to the right of the pivot).

| Advantages | Disadvantages |
|-|-|
| Efficient on large datasets | Not a good choice on small datasets |
| Low overhead, requiring little memory to function | Not a stable sort (relative order will not be preserved for two elements with the same key) |

### Complexity Analysis

*   **Time Complexity:** On average, `θ (N log (N))`, but can experience a worst-case of `O(N2)`. The performance is dependeont on how well the pivot is chosen (roughly dividing the array to sort in equal halves).

## Requirements

*   Elements in the array should all be of the same type.

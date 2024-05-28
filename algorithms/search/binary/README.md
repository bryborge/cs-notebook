# Binary Search

## Summary

Binary search is used for finding the position a target value within a _sorted_ array. It works by repeatedly dividing
the search interval in half until either a) the target is found, or b) the interval is empty.

| Advantages | Disadvantages |
|------------|---------------|
|Faster than linear search, especially in large arrays | Array must be sorted |
| More efficient than many other search algorithms with similar time complexity | Data structure being searched must be stored in contiguous memory locations |

### Complexity Analysis

| Time Complexity ||
|-|-|
| Best Case | O(1) |
| Average Case | O(log N) |
| Worst Case | O(log N) |

## Requirements

*   A _sorted_ list

## Pseudocode

1.  **Divide** the list in half (by finding the middle element)
2.  **If** the target is found at the middle element, terminate the process
3.  **If** the target is not found at the middle element, choose which half will be used as the next list:
    1. **If** the target is lower than the middle element, then the left side is used
    2. **If** the target is higher than the middle element, then the right side is used
4.  **Continue** this process until the target is found or all of the list has been searched.

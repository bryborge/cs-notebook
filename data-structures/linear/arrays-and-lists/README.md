# Arrays and Lists

## Summary

*   An **Array** is the fundamental sequentially-allocated data structure. Each item in an array is able to be
    referenced by its index in constant time.

*   A **List (or Linked List)** is the fundamental linked data structure, stored as distinct blocks in memory bound together with
    pointers.

| Arrays | Lists |
|--------|-------|
| Fixed size in memory, though can be resized if memory is in danger of running out | Variable in size due to links/pointers to other addresses in memory, which means overflow won't occur unless all memory is full |
| Efficiently indexed because the memory for an array is in a single location | Requires random pointer jumping, which is easier and faster at scale |
| Insertions and deletions require all subsequent items to shift | Insertions and deletions are simpler to perform (adjusting a pointer) |


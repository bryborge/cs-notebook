# frozen_string_literal: true

# Sorts an array using the quick sort algorithm.
#
# @param [Array] array The array to sort.
# @param [Integer] low The lower index of the array.
# @param [Integer] high The higher index of the array.
# @return [Array] The sorted array.
def quick_sort(array, low = 0, high = array.length - 1)
  if low < high
    pivot_index = partition(array, low, high)
    quick_sort(array, low, pivot_index - 1)
    quick_sort(array, pivot_index + 1, high)
  end

  array
end

# Partitions the array between indices low and high using the element at high as
# the pivot. Rearranges elements so that those less than the pivot are on the
# left, and those greater are on the right. The pivot is then placed in its
# correct sorted position.
#
# @param [Array] array The array to partition.
# @param [Integer] low The lower index of the array.
# @param [Integer] high The higher index of the array.
# @return [Integer] The index of the pivot element.
def partition(array, low, high)
  pivot = array[high]
  i     = low

  (low...high).each do |j|
    if array[j] < pivot
      array[i], array[j] = array[j], array[i]
      i += 1
    end
  end

  array[i], array[high] = array[high], array[i]
  i
end

################################################################################
# Example Usage

arr = [64, 25, 12, 22, 11]
p quick_sort(arr)  # Output: [11, 12, 22, 25, 64]

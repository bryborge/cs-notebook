# frozen_string_literal: true

# Sorts an array using the quick sort algorithm.
#
# @param [Array] list The array to sort.
# @param [Integer] low The lower index of the array.
# @param [Integer] high The higher index of the array.
# @return [Array] The sorted array.
def quick_sort(list, low = 0, high = list.length - 1)
  if low < high
    pivot_index = partition(list, low, high)
    quick_sort(list, low, pivot_index - 1)
    quick_sort(list, pivot_index + 1, high)
  end

  list
end

# Partitions the list between indices low and high using the element at high as
# the pivot. Rearranges elements so that those less than the pivot are on the
# left, and those greater are on the right. The pivot is then placed in its
# correct sorted position.
#
# @param [Array] list The array to partition.
# @param [Integer] low The lower index of the array.
# @param [Integer] high The higher index of the array.
# @return [Integer] The index of the pivot element.
def partition(list, low, high)
  pivot = list[high]
  i     = low

  (low...high).each do |j|
    if list[j] < pivot
      list[i], list[j] = list[j], list[i]
      i += 1
    end
  end

  list[i], list[high] = list[high], list[i]
  i
end

################################################################################
# Example Usage

arr = [64, 25, 12, 22, 11]
p quick_sort(arr)  # Output: [11, 12, 22, 25, 64]

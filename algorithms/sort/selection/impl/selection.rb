# frozen_string_literal: true

# Finds the smallest item in an array and returns its index.
#
# @param array [Array] The array of items to search.
# @return [Integer] The index of the smallest item in the array.
def find_smallest(array)
  smallest_index = 0

  array.each_with_index do |item, index|
    if item < array[smallest_index]
      smallest_index = index
    end
  end

  smallest_index
end

# Sorts an array using the selection sort algorithm.
#
# @param array [Array] The array to sort.
# @return [Array] The sorted array.
def selection_sort(array)
  new_array = []

  until array.empty?
    smallest_index = find_smallest(array)
    smallest = array.delete_at(smallest_index)
    new_array.push(smallest)
  end

  new_array
end

################################################################################
# Example Usage

arr = [5, 3, 6, 2, 10]
p selection_sort(arr)

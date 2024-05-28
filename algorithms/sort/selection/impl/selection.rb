# frozen_string_literal: true

# Finds the smallest item in an array and returns its index.
#
# @param list [Array] The list of items to search.
# @return [Integer] The index of the smallest item in the list.
def find_smallest(list)
  smallest_index = 0

  list.each_with_index do |item, index|
    if item < list[smallest_index]
      smallest_index = index
    end
  end

  smallest_index
end

# Sorts an array using the selection sort algorithm.
#
# @param list [Array] The list to sort.
# @return [Array] The sorted list.
def selection_sort(list)
  new_list = []

  until list.empty?
    smallest_index = find_smallest(list)
    smallest = list.delete_at(smallest_index)
    new_list.push(smallest)
  end

  new_list
end

################################################################################
# Example Usage

arr = [5, 3, 6, 2, 10]
p selection_sort(arr)

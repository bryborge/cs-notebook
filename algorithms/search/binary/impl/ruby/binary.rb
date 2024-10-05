# frozen_string_literal: true

# Performs binary search on a sorted list to find the index of a target value.
#
# @param list [Array] The sorted list in which to search.
# @param target [Object] The value to search for.
# @return [Integer, nil] The index of the target value if found, otherwise nil.
def binary_search(list, target)
  low  = 0
  high = list.length - 1

  while low <= high
    mid           = (low + high) / 2
    current_value = list[mid]

    return mid if current_value == target

    if current_value > target
      high = mid - 1
    else
      low = mid + 1
    end
  end

  nil
end

################################################################################
# Example Usage

list   = [1, 3, 5, 7, 9]
target = 5
result = binary_search(list, target)

puts "Index of target #{target} is #{result}"

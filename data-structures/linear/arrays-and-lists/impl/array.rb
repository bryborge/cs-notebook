# frozen_string_literal: true

# Since Arrays come with Ruby (and most languages) for free, we don't need to
# craft our own from scratch. Below are some examples of how to use and interact
# with them.

# Creation
array = []
array = [1, 2, 3, 4, 5]

# Accessing
first_elem = array[0]  # 1
last_elem  = array[-1] # 5

# Modifying
array[2] = 10 # [1, 2, 10, 4, 5]

# Adding
array.push(6)      # [1, 2, 10, 4, 5, 6]
array.unshift(0)   # [0, 1, 2, 10, 4, 5, 6]
array.insert(3, 3) # [0, 1, 2, 3, 10, 4, 5, 6]

# Removing
array.pop          # [0, 1, 3, 2, 10, 4, 5]
array.shift        # [1, 3, 2, 10, 4, 5]
array.delete_at(3) # Returns 10; [1, 2, 3, 4, 5]

# Iterating

## each
array.each do |elem|
  puts elem
end

## for
for elem in array
  puts elem
end

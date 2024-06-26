# frozen_string_literal: true

# Calculates the euclidean distance between two points
#
# @param point_a [Array] The first point
# @param point_b [Array] The second point
# @return [Float] The euclidean distance between the two points
def euclidean_distance(point_a, point_b)
  Math.sqrt((point_a[0] - point_b[0])**2 + (point_a[1] - point_b[1])**2)
end

# Determines the majority class among the k nearest neighbors
#
# @param data [Array] The data points
# @param query [Array] The query point
# @param k [Integer] The number of nearest neighbors
# @return [Integer] The majority class
def k_nearest_neighbors(data, query, k)
  # Calculate the euclidean distance from the query point to all other points
  distances = data.map do |point|
    { distance: euclidean_distance(point[0..-2], query), label: point[-1] }
  end

  # Sort the distances from smallest to largest
  nearest_neighbors = distances.sort_by { |hash| hash[:distance] }.first(k)

  # Determine the majority class among the k nearest neighbors
  classes = nearest_neighbors.map { |neighbor| neighbor[:label] }
  majority_class = classes.group_by { |c| c }.max_by { |_, group| group.size }.first

  majority_class
end

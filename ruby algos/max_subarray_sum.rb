# sliding window algo

# inefficient way: O(n * k)
def max_subarray_sum nums, k
  max_sum = -Float::INFINITY
  (0..nums.length - k).each do |i|
    # summing this window is what adds k time complexity
    current_sum = nums[i...k + i].sum
    if current_sum > max_sum
      max_sum = current_sum
    end
  end
  return max_sum
end

# efficient way: O(n)
def max_subarray_sum_eff nums, k
  current_sum = nums[0...k].sum
  max_sum = current_sum
  (0...nums.length - k).each do |i|
    # instead of summing a window of size k, this is doing 
    # simple + and - operations which is always O(1)
    current_sum -= nums[i]
    current_sum += nums[i + k]
    if current_sum > max_sum
      max_sum = current_sum
    end
  end
  return max_sum
end

p max_subarray_sum([4, 2, 1, -9, 8, 4, 3], 3) # -> 15
p max_subarray_sum([1, 4, 1, 10, 25, 3, 1, 0, 20], 4) # -> 40
p max_subarray_sum([-4, -18, -2, -5, -9], 2) # -> -7

p max_subarray_sum_eff([4, 2, 1, -9, 8, 4, 3], 3) # -> 15
p max_subarray_sum_eff([1, 4, 1, 10, 25, 3, 1, 0, 20], 4) # -> 40
p max_subarray_sum_eff([-4, -18, -2, -5, -9], 2) # -> -7

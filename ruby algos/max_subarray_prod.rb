# sliding window algo
def max_subarray_prod nums, k
  current_window = nums[...k].inject(:*)
  max_prod = current_window
  (0..nums.length - k - 1).each do |i|
    current_window /= nums[i]
    current_window *= nums[i + k]
    if current_window > max_prod
      max_prod = current_window
    end
  end
  return max_prod
end

p max_subarray_prod([4, 2, 1, -9, 8, 2, 3], 3) # -> 48
p max_subarray_prod([-9, 1, -8, 2, 3, 7], 3) # -> 72
p max_subarray_prod([60, 20, 10, 90, 50], 1) # -> 90
p max_subarray_prod([1,2,3,4], 4) # -> 24
nums = [1] * 40000 # [1,1,1,...]
p max_subarray_prod(nums, 5000) # -> 1

def has_subarray_sum nums, target_sum
  prefix_sum_arr = [0]
  running_sum = 0
  nums.each do |num|
    running_sum += num
    prefix_sum_arr << running_sum
  end
  # use seen set -O(n)- to avoid using nested loops -O(n2)-
  # requires prefix sum arr to utilize it
  seen = Set[]
  prefix_sum_arr.each do |num|
    val = num - target_sum
    if seen.include? val
      return true
    else 
      seen << num
    end
  end
  return false
end

p has_subarray_sum([1, 3, 1, 4, 3], 8) # -> True
p has_subarray_sum([1, 3, 1, 4, 3], 2) # -> False
p has_subarray_sum([5], 5) # -> True
p has_subarray_sum([1, 1, 1, 1, 1, 1, 1, 1, 1], 9) # -> True
p has_subarray_sum([4, 2, 5, 1, 5, -2, 8], 10) # -> False

def binary_search(nums, target)
  lo = 0
  hi = nums.length - 1
  while lo <= hi
    mid = (lo + hi) / 2
    if target < nums[mid]
      hi = mid - 1
    elsif target > nums[mid]
      lo = mid + 1
    else
      return mid
    end
  end
  return -1
end

p binary_search([0, 1, 2, 3, 4, 5, 6, 7, 8], 6) # -> 6
p binary_search([0, 6, 8, 12, 16, 19, 20, 28], 8) # -> 2
p binary_search([0, 6, 8, 12, 16, 19, 20, 24, 28], 28) # -> 8
p binary_search([7, 9], 9) # -> 1
p binary_search([7, 9], 12) # -> -1
p binary_search([7], 7) # -> 0
p binary_search([], 7) # -> -1

require 'byebug'

def merge_sort nums
  # base case
  if nums.length <= 1
    return nums
  end
  #calculate mid point
  mid = nums.length / 2
  # recursive step
  left_side = merge_sort(nums[...mid])
  right_side = merge_sort(nums[mid...])
  return sort(left_side, right_side)
end

def sort(left, right)
  sorted = []
  until left.empty? or right.empty?
    #compare left-most element to partner element, until one array is empty
    if left[0] < right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  # add remaining elements in a sorted order
  sorted += left
  sorted += right
  return sorted
end

p merge_sort([10, 4, 42, 5, 8, 100, 5, 6, 12, 40])


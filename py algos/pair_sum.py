# Write a function, pair_sum, that takes in a list and a target sum as arguments. The function should return a tuple containing a pair of indices whose elements sum to the given target. The indices returned must be unique. Be sure to return the indices, not the elements themselves. There is guaranteed to be one such pair that sums to the target.

def pair_sum(nums, target_sum):
  prev_nums = {}
  for i, num in enumerate(nums):
    compliment = target_sum - num

    if compliment in prev_nums:
      return (prev_nums[compliment], i)
    
    prev_nums[num] = i

print(pair_sum([3, 2, 5, 4, 1], 8)) # -> (0, 2)
print(pair_sum([4, 7, 9, 2, 5, 1], 3)) # -> (3, 5)
print(pair_sum([9, 9], 18)) # -> (0, 1)
# this would break a O(n2) time complexity algo
numbers = [ i for i in range(1, 6001) ]
print(pair_sum(numbers, 11999)) # -> (5998, 5999)``
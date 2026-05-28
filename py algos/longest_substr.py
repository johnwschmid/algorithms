# Given a string s, find the length of the longest substring without duplicate characters.

def lengthOfLongestSubstring(str):
  cur_str = ''
  longest_str = ''
  for ch in str:
    if ch in cur_str:
      if len(cur_str) > len(longest_str):
        longest_str = cur_str
      cur_str = ch
    else:
      cur_str += ch
      # print(cur_str)
  return longest_str

print(lengthOfLongestSubstring('abacbdefghbcdc'))

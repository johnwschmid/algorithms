# Write a function, most_frequent_char, that takes in a string as an argument. The function should return the most frequent character of the string. If there are ties, return the character that appears earlier in the string. You can assume that the input string is non-empty
def most_frequent_char(str):
  tally = {}
  for ch in str:
    tally[ch] = tally.get(ch, 0) + 1
  
  most_freq = str[0]
  for ch in str:
    if tally[ch] > tally[most_freq]:
      most_freq = ch
      
  return most_freq

print(most_frequent_char('bookeeper')) # -> 'e'
print(most_frequent_char('abby')) # -> 'b'
print(most_frequent_char('mississippi')) # -> 'i'

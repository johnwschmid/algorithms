def palindrome_permutation?(str)
  char_count = Hash.new(0)
  # creates hash of char tally, selects the # of odd values, returns false if > 1
  str.each_char do |char|
    char_count[char] += 1
  end
  odd_count = char_count.values.select(&:odd?).size
  odd_count <= 1
end

# Time complexity: O(n), Space Complexity: O(1) the hash can store at most
# the # of uniq values in the alphabet, and odd_count is an integer

p palindrome_permutation? 'tests'

# much less efficient
def pal_perm2?(str)
  odd_counts = 0
  # skips the char tally, only counts characters w/ odd #'s, returns false if > 1
  str.chars.uniq.each do |i|
    odd_counts += 1 if str.count(i).odd?
  end
  
  odd_counts <= 1
end

# Time complexity of O(n²): str.char.uniq = O(n), than iterating over those chars
# is O(1) because they are bounded by the number of uniq char's in alphabet (26).
# the nested .count method is the problem, each iteration it is going to scan over the
# entire string to tally the value. 
# Space Complexity: O(n) - str.chars creates an array of all input values

p pal_perm2? 'assdasd'

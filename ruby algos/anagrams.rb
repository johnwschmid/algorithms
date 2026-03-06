def anagrams(word, arr)
  sorted_str = word.chars.sort
  arr.select { |i| i.chars.sort == sorted_str }
end

p anagrams('racer', %w[crazer carer racar caers racer])

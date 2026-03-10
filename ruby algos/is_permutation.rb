def is_permutation? str1, str2
  str1_chars = Hash.new(0)
  str2_chars = Hash.new(0)
  
  str1.length.times do |i|
    str1_chars[str1[i]] += 1
    str2_chars[str2[i]] += 1
  end
  
  str1_chars == str2_chars
end

p is_permutation?('tsting', 'gintst')


def unique_chars? str
  char_set = Hash.new(0)

  str.chars.each do |i|
    return false if char_set[i] == true
    char_set[i] = true
  end

  true
end

p unique_chars? 'abcdefb'
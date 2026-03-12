def one_edit_away(str1, str2)
  if str1.length == str2.length
    one_edit_replace(str1, str2)
  elsif str1.length + 1 == str2.length || str1.length - 1 == str2.length
    one_edit_insert(str1, str2)
  else
    false
  end
end

def one_edit_replace(string1, string2)
  found_diff_char = false
  string1.chars.each_with_index do |val, index|
    # how to look for more than one occurence in a loop
    next unless val != string2[index]
    return false if found_diff_char == true
    found_diff_char = true
  end
  true
end

def one_edit_insert(string1, string2)
  longer = string1 > string2 ? string1 : string2
  shorter = string1 > string2 ? string2 : string1

  longer.chars.each_with_index do |val, index|
    word = longer.chars
    word.delete_at(index)
    return true if shorter == word.join('')
  end

  false
end

p one_edit_away('hat', 'cat')
p one_edit_away('cat', 'cats')
p one_edit_away('meow', 'seow')
p one_edit_away('hatii', 'cat')
p one_edit_away('hat', 'catjj')
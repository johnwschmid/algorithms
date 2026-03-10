# uses while loop
def reverse_string str
  new_str = ''
  while str.length > 0
    new_str << str[-1]
    str.chop!
  end
  new_str
end

# uses downto
def reverse_string_downto str
  result = ''
  (str.length - 1).downto(0) do |i|
    result << str[i]
  end
  result
end

p reverse_string 'hellothere'
p reverse_string_downto 'testing'
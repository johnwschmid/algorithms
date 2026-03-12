# def find_intersection strArr
#   arr = strArr.map { |str| str.split(", ") }
#   list1 = arr[0]
#   list2 = arr[1]
#   map = {}
#   results = []

#   list1.each do |i|
#     map[i] = true
#   end
#   list2.each do |i|
#     if map[i]
#       results << i
#     end
#   end
#   results.empty? ? false : results
# end

# def find_intersection strArr
#   arr = strArr.map {|i| i.split(", ")}
#   map = {}
#   results = []

#   arr[0].each do |i|
#     map[i] = true
#   end
#   arr[1].each do |i|
#     if map[i]
#       results << i
#     end
#   end
#   results
# end

# p find_intersection ["4, 7, 3, 5, 1, 12, 16", "3, 5, 1"]

def find_intersection strArr
  map = {}
  results = []
  split_strs = strArr.map {|i| i.split(', ')}
  strA = split_strs[0]
  strB = split_strs[1]
  strA.each do |i|
    map[i] = true
  end
  strB.each do |i|
    if map[i]
      results << i
    end
  end
  results
end

p find_intersection ["4, 7, 3, 5, 1, 12, 16", "3, 5, 1, 4, 7, 14"]
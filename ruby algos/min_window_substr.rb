# Have the function MinWindowSubstring(strArr) take the array of strings stored in strArr, which will contain only two strings, the first parameter being the string N and the second parameter being a string K of some characters, and your goal is to determine the smallest substring of N that contains all the characters in K. For example: if strArr is ["aaabaaddae", "aed"] then the smallest substring of N that contains the characters a, e, and d is "dae" located at the end of the string. So for this example your program should return the string dae.

# Another example: if strArr is ["aabdccdbcacd", "aad"] then the smallest substring of N that contains all of the characters in K is "aabd" which is located at the beginning of the string. Both parameters will be strings ranging in length from 1 to 50 characters and all of K's characters will exist somewhere in the string N. Both strings will only contains lowercase alphabetic characters.

def MinWindowSubstring(strArr)
  substr_arr = []
  a = strArr[0]
  b = strArr[1]

  #iterate thru entire 1st string
  a.length.times do |idx|
    p "idx: #{idx} --------"
    #iterate thru 2nd string, each time reducing the end point
    1.upto(a.length - idx) do |lngth|
      p "length: #{lngth}"
      substr = a[idx, lngth]
      p "substr: #{substr} ++++++++"
      substr_arr << substr if b.chars.all? {|letter| substr.count(letter) >= b.count(letter)}
    end
  end
  substr_arr.min_by{|sub| sub.length}
end

# keep this function call here
puts MinWindowSubstring(["ahffaksfajeeubsne", "jefaa"])
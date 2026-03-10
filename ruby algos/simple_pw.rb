# a simple password algorithm that checks if the pw is greater than 6 and less than 32 chars, doesn't include the string 'password', and includes a capital, number, and special character.
def SimplePassword(str)

  return false if str.length < 7 || str.length > 31
  return false if str.include? "password"
  has_cap = false
  has_num = false
  has_special = false

  str.each_char do |char|
    if char.match?(/[A-Z]/)
      has_cap = true
    end
    if char.match?(/[0-9]/)
      has_num = true
    end
    if char.match?(/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~`]/)
      has_special = true
    end
    
  end

  has_cap && has_num && has_special
end

p SimplePassword 'testing1#' # false
p SimplePassword 'Testing1#' # true
p SimplePassword 'Testing1' # false
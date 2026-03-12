def is_prime num
  return false if num == 1
  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

p is_prime(7) # -> True
p is_prime(11) # -> True
p is_prime(12) # -> True
p is_prime(9) # -> True
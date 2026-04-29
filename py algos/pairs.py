def pairs(chars):
  res = []
  for i in range(len(chars)):
    for j in range(i + 1, len(chars)):
      res.append((chars[i], chars[j]))
  return res

print(pairs(['a', 'b', 'c']))
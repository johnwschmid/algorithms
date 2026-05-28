def atm(amnt, denoms):
  wd = {}
  for denom in denoms:
    if denom <= amnt:
      val = amnt // denom
      wd[denom] = val
      amnt = amnt % denom
  return wd

print(atm(110, [20, 10, 5]))
print(atm(135, [20, 10, 5]))
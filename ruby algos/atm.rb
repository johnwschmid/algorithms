def atm(cash_amount, denominations)
  bills_withdrawn = {}
  denominations.each do |denom|
    if denom <= cash_amount
      division, remainder = cash_amount.divmod(denom)
      bills_withdrawn[denom] = division
      cash_amount = remainder
    end
  end
  bills_withdrawn
end

p atm(110, [100, 20, 10, 5])
p atm(245, [20, 10, 5])

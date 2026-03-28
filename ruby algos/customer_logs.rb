# Given two log files from separate days, **generate a list of ‘loyal customers' ** (return as a list of `customerId`) that meet the following criteria: 

# * they visted on both days
# * they visited at least two unique pages

# For the above example the solution returned would be `["6707", "4014"]`

def customer_list(day1, day2)
  map = {}
  res = []
  day1.each do |i|
    map[i['customerId']] ||= []
    map[i['customerId']] << i['pageId']
  end
  day2.each do |i|
    if map.include? i['customerId']
      map[i['customerId']] << i['pageId']
    end
  end
  map.map do |cust, pages|
    if pages.uniq.size >= 2
      res << cust
    end
  end
  res
end

day1 = [
  {"timestamp" => "1730314108", "pageId" => "4", "customerId" => "7220"},
  {"timestamp" => "1730314108", "pageId" => "12", "customerId" => "6707"},
  {"timestamp" => "1730314108", "pageId" => "4", "customerId" => "4014"},
  {"timestamp" => "1730314108", "pageId" => "9", "customerId" => "4014"},
  {"timestamp" => "1730314108", "pageId" => "9", "customerId" => "2000"}
]

day2 = [
  {"timestamp" => "2630314108", "pageId" => "4", "customerId" => "7220"},
  {"timestamp" => "2630314108", "pageId" => "4", "customerId" => "6707"},
  {"timestamp" => "2630314108", "pageId" => "4", "customerId" => "4014"},
  {"timestamp" => "2630314108", "pageId" => "4", "customerId" => "4014"}
]

p customer_list(day1, day2)

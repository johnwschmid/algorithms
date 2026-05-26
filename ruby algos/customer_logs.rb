# Given two log files from separate days, **generate a list of ‘loyal customers' ** (return as a list of `customerId`) that meet the following criteria:

# * they visted on both days
# * they visited at least two unique pages

# For the above example the solution returned would be `["6707", "4014"]`

def customer_list day1, day2
  hash_map = {}
  # making this a set will prevent a O(n2) in the first #each block below
  # calling includes on a set is only O(n), as the values are hashed
  day2_customers = day2.map {|c| c['customerId']}.to_set
  day1.each do |i|
    if day2_customers.include? i['customerId']
      hash_map[i['customerId']] ||= []
      hash_map[i['customerId']] << i['pageId']
    end
  end
  day2.each do |i|
    if hash_map.include? i['customerId']
      hash_map[i['customerId']] << i['pageId']
    end
  end
  res = hash_map.select { |k, v| v.uniq.count >= 2}
  res.keys
end

day1 = [
  {"timestamp" => "1730314108", "pageId" => "4", "customerId" => "7220"},
  {"timestamp" => "1730314108", "pageId" => "3", "customerId" => "7220"},
  {"timestamp" => "1730314108", "pageId" => "4", "customerId" => "6707"},
  {"timestamp" => "1730314108", "pageId" => "9", "customerId" => "4014"},
  {"timestamp" => "1730314108", "pageId" => "9", "customerId" => "2000"}
]

day2 = [
  {"timestamp" => "2630314108", "pageId" => "4", "customerId" => "6707"},
  {"timestamp" => "1730314108", "pageId" => "6", "customerId" => "7220"},
  {"timestamp" => "2630314108", "pageId" => "6", "customerId" => "4014"},
]

p customer_list(day1, day2)

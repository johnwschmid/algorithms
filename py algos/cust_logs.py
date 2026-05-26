# Given two log files from separate days, generate a list of ‘loyal customers' (return as a list of `customerId`) that meet the following criteria:
# 1) they visted on both days 2) they visited at least two unique pages

def custy_logs(day1, day2):
  foo = {}
  day2_customers = [x['customerId'] for x in day2]
  for log in day1:
    if log['customerId'] in day2_customers:
      if log['customerId'] in foo:
        foo[log['customerId']].append(log['pageId'])
      else:
        foo[log['customerId']] = [log['pageId']]
  for log in day2:
    foo[log['customerId']].append(log['pageId'])
  return [k for k,v in foo.items() if len(set(v)) >= 2]

day1 = [
  {"timestamp" : "1730314108", "pageId" : "4", "customerId" : "7220"},
  {"timestamp" : "1730314108", "pageId" : "4", "customerId" : "6707"},
  {"timestamp" : "1730314108", "pageId" : "4", "customerId" : "6707"},
  {"timestamp" : "1730314108", "pageId" : "9", "customerId" : "4014"},
  {"timestamp" : "1730314108", "pageId" : "9", "customerId" : "2000"},
  {"timestamp" : "1730314108", "pageId" : "3", "customerId" : "2000"},
]
day2 = [
  {"timestamp" : "2630314108", "pageId" : "4", "customerId" : "6707"},
  {"timestamp" : "1730314108", "pageId" : "6", "customerId" : "7220"},
  {"timestamp" : "2630314108", "pageId" : "6", "customerId" : "4014"},
]
print(custy_logs(day1, day2))
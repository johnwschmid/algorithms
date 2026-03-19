require 'net/http'
require 'nokogiri'

def print_msg_from_doc url
  # retrieve data
  res = Net::HTTP.get(URI(url))
  res.force_encoding('UTF-8')
  # create document + sort data
  data = []
  html_doc = Nokogiri::HTML(res)
  html_doc.css('table').css('tr').each do |row|
    data << row.css('td').map { |cell| cell.text }
  end
  cleaned_data = data[1..-1]

  # find dimensions of grid
  grid_data = {}
  cleaned_data.map { |x, char, y| grid_data[[x, y]] = char }
  coords = grid_data.keys
  x_min = coords.map(&:first).min
  x_max = coords.map(&:first).max
  y_min = coords.map(&:last).min
  y_max = coords.map(&:last).max

  # print secret message
  rows = []
  (y_min..y_max).each do |y|
    row = ""
    (x_min..x_max).each do |x|
      char = grid_data[[x, y]] || ' '
      row += char
    end
    rows << row
  end
  rows.reverse.each { |row| p row}
end

print_msg_from_doc 'https://docs.google.com/document/d/e/2PACX-1vRPzbNQcx5UriHSbZ-9vmsTow_R6RRe7eyAU60xIF9Dlz-vaHiHNO2TKgDi7jy4ZpTpNqM7EvEcfr_p/pub'
require_relative 'ruby_cal'

month = ARGV[0]
year = ARGV[1]

calendar = Calendar.new month, year
puts calendar.print_cal
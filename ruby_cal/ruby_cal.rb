class Calendar
    attr_reader :month
    attr_reader :year

def initialize(month, year)
    @month = month
    @year = year
end

def month_header
    month_header = "    January #{year}\n" if month == 1
    month_header = "   February #{year}\n" if month == 2
    month_header = "     March #{year}\n" if month == 3
    month_header = "     April #{year}\n" if month == 4
    month_header = "      May #{year}\n" if month == 5
    month_header = "     June #{year}\n" if month == 6
    month_header = "     July #{year}\n" if month == 7
    month_header = "    August #{year}\n" if month == 8
    month_header = "   September #{year}\n" if month == 9
    month_header = "    October #{year}\n" if month == 10
    month_header = "   November #{year}\n" if month == 11
    month_header = "   December #{year}\n" if month == 12
    month_header = "    January #{year}\n" if month == 1
    # return "   February #{year}\n" if month == 2
    # return "     March #{year}\n" if month == 3
    # return "     April #{year}\n" if month == 4
    # return "      May #{year}\n" if month == 5
    # return "     June #{year}\n" if month == 6
    # return "     July #{year}\n" if month == 7
    # return "    August #{year}\n" if month == 8
    # return "   September #{year}\n" if month == 9
    # return "    October #{year}\n" if month == 10
    # return "   November #{year}\n" if month == 11
    # return "   December #{year}\n" if month == 12
    month_header
end

def days_of_week
    return "Su Mo Tu We Th Fr Sa\n"
end

def number_of_days(month, year)
    days = [31,28,31,30,31,30,31,31,30,31,30,31]
    if @month - 1 == 1 && self.leap_year?
      return 29
    else
      days[@month - 1]
    end
  end

#=======    Original number_of_days method    ========#
#======= Still Not Sure why this doesn't pass ========#
#     if month == 4 | 6 | 9 | 11
#         number_of_days = 30
#     elsif month == 2
#         number_of_days = year % 4 == 0 ? 29 : 28
#         number_of_days = 28 if year % 100 == 0 && year % 400 != 0
#     else
#         number_of_days = 31
#     end
#     number_of_days
# end


def first_day_of_month(month, year)
# return 0/sat, 1/sun, 2/mon, 3/tue, 4/wed, 5/thu, 6/fri
month_values = [14, 15, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
month = month_values[month - 1]
# month = month.to_i
year = year.to_i
y = year
if month == 1 || month == 2
  y = (year - 1)
end

start_date = (1 + ((month * 26)/10) + y + (y/4) + (6 * (y/100)) + (y/400)) % 7
end

def leap_year?
    exact_year = @year
    if exact_year % 4 == 0 && % 100 != 0
        true
    elsif exact_year % 4 == 0 && % 100 == 0 && % 400 == 0
        true
    else
        false
    end
end

def print_cal(month, year)
    cal_string = month_header + days_of_week
    days = (1..number_of_days(@month, @year)).to_a
    days.collect! do |day|
        day.to_s
    end
    cal_string << days.join(" ")
    return cal_string
end


end
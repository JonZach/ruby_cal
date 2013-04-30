class Calendar
    attr_reader :month
    attr_reader :year

def initialize(month, year)
    @month = month
    @year = year
end

def month_header
    return "    January #{year}\n" if month == 1
    return "   February #{year}\n" if month == 2
    return "     March #{year}\n" if month == 3
    return "     April #{year}\n" if month == 4
    return "      May #{year}\n" if month == 5
    return "     June #{year}\n" if month == 6
    return "     July #{year}\n" if month == 7
    return "    August #{year}\n" if month == 8
    return "   September #{year}\n" if month == 9
    return "    October #{year}\n" if month == 10
    return "   November #{year}\n" if month == 11
    return "   December #{year}\n" if month == 12
end

def days_of_week
    return "Su Mo Tu We Th Fr Sa\n"
end

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

end
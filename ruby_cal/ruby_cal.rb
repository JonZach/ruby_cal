class Calendar
    attr_reader :month
    attr_reader :year

def initialize(month, year)
    @month = month
    @year = year
end

def month_header
    # refactor using .center(20).rstrip
    # and simplify using string interpolation with variables
    # requires creating array of month names
    if year < 1800 || year > 3000
        raise ArgumentError.new('This is not a valid year. Please enter a year between 1800 and 3000.')
    end
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

def first_day_of_month(month, year)
# return 0/sun, 1/mon, 2/tue, 3/wed, 4/thu, 5/fri , 6/sat
    # month_values = [14, 15, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    # m = month_values[month - 1]
    # y = (3..12).include?(month) ? year : year - 1
    
    # start_date = (1 + ((m * 26)/10) + y + (y/4) + (6 * (y/100)) + (y/400)) % 7
    m = @month.to_i
    y = @year.to_i
    if @month == 1 || @month == 2
      m = @month + 12
      y = @year - 1
    end
    first_day = ((1 + (((m + 1) * 26) / 10) + y + (y / 4) + 6 * (y / 100) + (y / 400)) % 7) - 1
    first_day = 6 if first_day == -1
    first_day
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

def format_month
    #extract functionality from print_cal method and put here
end

def print_cal(month, year)
    cal_string = month_header + days_of_week
    days = (1..number_of_days(@month, @year)).to_a
    days.collect! do |day|
        if day < 10
            " " + day.to_s
        else
            day.to_s
        end
    end
    # i = 0
    # until i == first_day_of_month(@month, @year)
    #     days.unshift("  ")
    #     i += 1
    first_day_of_month(@month, @year).times do
        days.unshift("  ")
    end
    until days.length == 0
      week = days.slice!(0,7)
      cal_string << week.join(" ")
      cal_string << "\n"
    end
    until cal_string.count("\n") >= 7
      cal_string << "\n"
    end
    # cal_string << days.join(" ")
    return cal_string + "\n"
end


end
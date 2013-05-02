require 'test/unit'
require './myCalendar'

class CalIntegrationTests < Test::Unit::TestCase

    def test_final_integration
        assert_equal `cal 2 2013`, `ruby myCalendar.rb 2 2013`
    end

    def test_final_integration_leap_year
        assert_equal `cal 2 1996`, `ruby myCalendar.rb 2 1996`
    end

    def test_final_integration_leap_century
        assert_equal `cal 2 2000`, `ruby myCalendar.rb 2 2000`
    end

    def test_final_integration_leap_year_not_leap_century
        assert_equal `cal 2 1900`, `ruby myCalendar.rb 2 1900`
    end

    def test_final_integration_more_than_usual_weeks
        assert_equal `cal 3 2013`, `ruby myCalendar.rb 3 2013`
    end

    def test_final_integration_less_than_usual_weeks
        assert_equal `cal 2 2009`, `ruby myCalendar.rb 2 2009`
    end

end
require 'test/unit'
require './ruby_cal'

class CalTest < Test::Unit::TestCase

  def test_01_accept_arguments
    month = ARGV[0]
    year = ARGV[1]
 
    #puts `cal #{month} #{year}`
  end

  # def test_01a_invalid_year
  #   new_cal = Calendar.new(1, 1799)
  #   assert_raise ArgumentError do
  #     puts `cal #{month} #{year}`
  # end

  def test_02_month_header
    new_cal = Calendar.new(2, 2013)
    assert_equal("   February #{2013}\n", new_cal.month_header)
  end

  def test_03_day_of_week_in_order
    new_cal = Calendar.new(4, 2013)
    assert_equal("Su Mo Tu We Th Fr Sa\n", new_cal.days_of_week)
  end

  def test_04_how_many_days_in_this_month
    new_cal = Calendar.new(7, 2005)
    assert_equal(31, new_cal.number_of_days(7, 2005))
  end

  def test_04a_how_many_days_in_this_month
    new_cal = Calendar.new(8, 2006)
    assert_equal(31, new_cal.number_of_days(8, 2006))
  end

  def test_04b_how_many_days_in_this_month
    new_cal = Calendar.new(6, 1998)
    assert_equal(30, new_cal.number_of_days(6, 1998))
  end

  def test_04c_how_many_days_in_this_month
    new_cal = Calendar.new(2, 2009)
    assert_equal(28, new_cal.number_of_days(2, 2009))
  end

  def test_05_how_many_days_in_February_when_leap_year
    new_cal = Calendar.new(2, 1996)
    assert_equal(29, new_cal.number_of_days(2, 1996))
  end

  def test_06_is_this_a_leap_year
    new_cal = Calendar.new(2, 1996)
    assert_equal(true, new_cal.leap_year?)
  end

  def test_07_not_a_leap_year
    new_cal = Calendar.new(1, 2013)
    assert_equal(false, new_cal.leap_year?)
  end

  def test_08_first_day_of_month
    new_cal = Calendar.new(6, 1995)
    assert_equal(5, new_cal.first_day_of_month(6, 1995))
  end

  def test_09_print_cal
    new_cal = Calendar.new(2, 2012)
    assert_equal("   February 2012\nSu Mo Tu We Th Fr Sa\n          1  2  3  4\n 5  6  7  8  9 10 11\n12 13 14 15 16 17 18\n19 20 21 22 23 24 25\n26 27 28 29\n\n", new_cal.print_cal(2, 2012))
  end

  def test_09a_print_cal
    new_cal = Calendar.new(3, 1999)
    assert_equal("     March 1999\nSu Mo Tu We Th Fr Sa\n    1  2  3  4  5  6\n 7  8  9 10 11 12 13\n14 15 16 17 18 19 20\n21 22 23 24 25 26 27\n28 29 30 31\n\n", new_cal.print_cal(3, 1999))
  end


end
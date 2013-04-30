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
    new_cal = Calendar.new(7, 1999)
    assert_equal(31, new_cal.number_of_days(7, 1999))
  end

  def test_04a_how_many_days_in_February_when_leap_year
    new_cal = Calendar.new(2, 2000)
    assert_equal(29, new_cal.number_of_days(2, 2000))
  end

  def test_05_is_this_a_leap_year
    new_cal = Calendar.new(2, 1996)
    assert_equal(true, new_cal.leap_year?)
  end

  def test_06_not_a_leap_year
    new_cal = Calendar.new(1, 2013)
    assert_equal(false, new_cal.leap_year?)
  end


end
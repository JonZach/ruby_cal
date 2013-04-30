require 'test/unit'
require './ruby_cal'

class CalTest < Test::Unit::TestCase

  def test_01_accept_arguments
    month = ARGV[0]
    year = ARGV[1]
 
    puts `cal #{month} #{year}`
  end

  def test_02_month_header
    new_cal = Calendar.new(2, 2013)
    assert_equal("   February #{2013}\n", new_cal.month_header)
  end

  def test_03_day_of_week_in_order
    new_cal = Calendar.new(4, 2013)
    assert_equal("Su Mo Tu We Th Fr Sa\n", new_cal.days_of_week)
  end


  def test_04_is_this_a_leap_year
    new_cal = Calendar.new(2, 1996)
    assert_equal(true, new_cal.leap_year?)
  end

  def test_05_not_a_leap_year
    new_cal = Calendar.new(1, 2013)
    assert_equal(false, new_cal.leap_year?)
  end

  # def test_07_add_multiple_items_get_item
  #   ll = LinkedList.new
  #   ll.add_item("foo")
  #   ll.add_item("bar")
  #   ll.add_item("grille")
  #   assert_equal("grille", ll.get(2))
  # end

  # def test_08_get_item_that_doesnt_exist
  #   ll = LinkedList.new
  #   assert_raise IndexError do
  #     ll.get(1)
  #   end
  # end


end
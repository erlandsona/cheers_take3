require_relative '../test_helper'
require_relative '../../lib/birthday'

class TestBirthday < Minitest::Test
  def test_parse_feb_29
    expected = Date.civil(2016,02,29)
    actual = Birthday.parse("02/29")
    assert_equal expected, actual
  end

  def test_parse_yesterday
    expected = (Date.today - 1).next_year
    actual = Birthday.parse("#{expected.month}/#{expected.day}")
    assert_equal expected, actual
  end

  def test_parse_today
    expected = Date.today
    actual = Birthday.parse("#{expected.month}/#{expected.day}")
    assert_equal expected, actual
  end

  def test_parse_tommorrow
    expected = Date.today + 1
    actual = Birthday.parse("#{expected.month}/#{expected.day}")
    assert_equal expected, actual
  end

  def test_parse_sept_31st
    assert_nil Birthday.parse("09/31")
  end

  def test_parse_poor_reading_comprehension
    assert_nil Birthday.parse("August 6th")
  end

  def test_parse_non_birthday
    assert_nil Birthday.parse("Anne/*")
  end

  def test_parse_backwards_day
    assert_nil Birthday.parse("25/05")
  end

  def test_parse_non_existant_day
    assert_nil Birthday.parse("02/31")
  end

  def test_parse_whitespace_instead_of_day
    assert_nil Birthday.parse("  ")
  end

  def test_parse_blank_instead_of_day
    assert_nil Birthday.parse("")
  end
end

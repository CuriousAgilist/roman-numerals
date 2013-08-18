#test_roman_numerals.rb
#to run enter "ruby *test*.rb" from the project directory 
require './lib/roman_numerals'
require 'test/unit'

class RomanNumeralsTest < Test::Unit::TestCase
  def test_gives_back_additive_digits_for_one_to_three_only
    assert_equal("I", RomanNumerals.new.getRN(1))
    assert_equal("II", RomanNumerals.new.getRN(2))
    assert_equal("III", RomanNumerals.new.getRN(3))
    assert_not_equal("IIII", RomanNumerals.new.getRN(4))
  end
  def test_uses_V_X_L_C_D_M_for_5_10_50_100_500_1000
    assert_equal("V", RomanNumerals.new.getRN(5))
    assert_equal("X", RomanNumerals.new.getRN(10))
    assert_equal("L", RomanNumerals.new.getRN(50))
    assert_equal("C", RomanNumerals.new.getRN(100))
    assert_equal("D", RomanNumerals.new.getRN(500))
    assert_equal("M", RomanNumerals.new.getRN(1000))
  end
  def test_reduces_using_subtraction_for_fours
    assert_equal("IV", RomanNumerals.new.getRN(4))
    assert_equal("XL", RomanNumerals.new.getRN(40))
    assert_equal("CD", RomanNumerals.new.getRN(400))
    assert_not_equal("DM", RomanNumerals.new.getRN(4000))
  end
  def test_reduces_using_subtraction_for_nines
    assert_equal("IX", RomanNumerals.new.getRN(9))
    assert_equal("XC", RomanNumerals.new.getRN(90))
    assert_equal("CM", RomanNumerals.new.getRN(900))
  end
  def test_never_shows_zeroes
    assert_equal("",  RomanNumerals.new.getRN(0))
    assert_equal("CIV", RomanNumerals.new.getRN(104))
    assert_equal("MCMIV", RomanNumerals.new.getRN(1904))
  end
  def test_is_limited_to_numbers_under_five_thousand
    assert_equal("MMMMCMXCVIII", RomanNumerals.new.getRN(4998))
    assert_equal("MMMMCMXCIX", RomanNumerals.new.getRN(4999))
    assert_equal("", RomanNumerals.new.getRN(5000))
  end
  def test_gives_back_valid_dates
    assert_equal("MCMXCIX", RomanNumerals.new.getRN(1999))
    assert_equal("MMXIII", RomanNumerals.new.getRN(2013))
  end
end

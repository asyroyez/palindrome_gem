require "test_helper"

class AsyroyezPalindromeTest < Minitest::Test
  def test_for_non_palindrome
    refute "apple".palindrome?
  end

  def test_for_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctiation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_blank_non_palindrome
    refute " ".palindrome?
  end
end

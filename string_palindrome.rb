class String
  include Palindrome
  # Checks if strings are empty or consist solely of empty space
  def blank?
    empty? || match?(/^\s*$/)
  end
end
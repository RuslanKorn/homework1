module Palindrome
  extend self

  def palindrome?(str)
   str.gsub(/[ ,]/, "")
   str.downcase == str.downcase.reverse ? ret = true : ret = false
  end

end

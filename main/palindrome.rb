module Palindrome
  extend self

  def palindrome?(str)
   ret = false
   str.gsub(/[ ,]/, "")
   ret = true if str.downcase == str.downcase.reverse
   ret
  end

end

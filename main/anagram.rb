module Anagram
  extend self

  def anagrams(str)
    str = "rats What star thaw Tars"
    str.downcase.gsub!(/[ ,-.]/, " ").split(" ").map {|i,k| [k=i] << i.chars.sort_by(&:downcase).join}
  end
end

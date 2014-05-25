module Anagram
  extend self

  def anagrams(str)
    str.downcase.gsub!(/[ ,-.]/, " ").split(" ").map {|i,k| [k=i] << i.chars.sort_by(&:downcase).join}
  end
end

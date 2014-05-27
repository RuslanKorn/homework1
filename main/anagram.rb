module Anagram
  extend self

def anagrams(str)
  str = str.downcase.split(/\W+/)
  anagrams = []
  while str.size > 0 do
    x = 0
    temp = [str[x]]
    y = x + 1
    while y < str.size do
      if (str[x].downcase.split("").sort  == str[y].downcase.split("").sort)
        temp << str[y]
        str.delete_at(y)
      else
        y = y + 1
      end
    end
    anagrams << temp
    str.delete_at(x)
  end
  anagrams
end
end

module Anagram
  extend self

  def anagrams(str)
    arr_new = []
    anagrams = []
    return anagrams if str.empty?
    str = " #{str}"
    arr = str.downcase.gsub!(/[ ,-.]/, " ").split(" ")
    arr_sort = arr.map {|i| i.chars.sort_by(&:downcase).join}
    i, k = 0, 0
    while(i != arr_sort.size)
      while (k != arr_sort.size)
        arr_new << arr[k] if arr_sort[i] == arr_sort[k]
        k += 1
      end
      anagrams << arr_new.uniq
      arr_new.clear
      i += 1
      k = i
      break if anagrams.flatten.size == arr.size
    end
    anagrams
  end
end

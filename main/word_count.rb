module Words
  extend self

  def count(str)
  	str = " #{str}"
    Hash[str.gsub(/[ ,-.]/, " ").split(" ").group_by(&:downcase).map {|k,v| [k, v.length]}]
  end

end

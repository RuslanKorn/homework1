module Words
  extend self

  def count(str)
    Hash[str.split(/\W+/).group_by(&:downcase).map {|k,v| [k, v.length]}]
  end

end

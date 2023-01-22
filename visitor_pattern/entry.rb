require './element.rb'

class Entry
  include Element

  def get_name
    raise NotImplementedError
  end

  def get_size
    raise NotImplementedError
  end

  def to_string
    "#{get_name} (#{get_size})"
  end
end

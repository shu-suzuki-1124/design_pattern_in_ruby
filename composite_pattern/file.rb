require "./entry.rb"

class DirectoryFile < Entry
  def initialize(name, size)
    @name = name
    @size = size
  end

  def get_name
    @name
  end

  def get_size
    @size
  end

  def print_list(prefix)
    puts "#{prefix}/#{self.to_string}"
  end
end

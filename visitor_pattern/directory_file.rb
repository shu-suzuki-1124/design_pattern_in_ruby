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

  def accept(visitor)
    visitor.visit(self)
  end
end

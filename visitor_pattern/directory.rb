require "./entry.rb"

class Directory < Entry

  attr_accessor :directory

  def initialize(name)
    @name = name
    @directory = []
  end

  def get_name
    @name
  end

  def get_size
    size = 0
    @directory.each { |d| size += d.get_size }
    size
  end

  def add(entry)
    @directory << entry
  end

  def accept(visitor)
    visitor.visit(self)
  end
end

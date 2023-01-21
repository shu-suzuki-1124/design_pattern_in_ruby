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

  def print_list(prefix)
    puts "#{prefix}/#{self.to_string}"
    @directory.each { |d| d.print_list("#{prefix}/#{@name}")}
  end

  def add(entry)
    @directory << entry
  end
end

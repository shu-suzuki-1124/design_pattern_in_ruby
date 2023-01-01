require './abstract_display.rb'

class StringDisplay < AbstractDisplay

  def initialize(str)
    @str = str
  end

  private

  def open
    print_line
  end

  def printout
    puts "|#{@str}|"
  end

  def close
    print_line
  end

  def print_line
    puts "+" + "#{"-" * @str.bytesize}" + "+"
  end
end

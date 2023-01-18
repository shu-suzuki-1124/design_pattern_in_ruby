require "./display_impl.rb"

class StringDisplayImpl < DisplayImpl
  def initialize(string)
    @string = string
    @width = string.length
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{@string}|"
  end

  def raw_close
    print_line
  end

  private

  def print_line
    p "+#{'-' * @width }+"
  end
end

require './abstract_display.rb'

class ChairDisplay < AbstractDisplay

  def initialize(str)
    @str = str
  end

  private

  def open
    "<<"
  end

  def printout
    @str
  end

  def close
    ">>"
  end
end

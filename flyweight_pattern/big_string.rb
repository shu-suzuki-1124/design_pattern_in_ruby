require "./big_char_factory.rb"
require "./big_char.rb"

class BigString
  def initialize(string)
    @factory = BigCharFactory.instance
    @bigchars = string.chars.map { |charname| @factory.get_big_char(charname)}
  end

  def print
    @bigchars.each do |bc|
      bc.print
    end
  end
end

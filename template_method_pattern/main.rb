require './chair_display.rb'
require './string_display.rb'

class Main
  def self.call
    d1 = ChairDisplay.new("H")
    d2 = StringDisplay.new("Hello, world.")
    d1.display
    d2.display
  end
end

Main.call
require "./display.rb"
require "./count_display.rb"
require "./string_display_impl.rb"

class Main
  def self.call
    d1 = Display.new(StringDisplayImpl.new("Hello, Japan"))
    d2 = CountDisplay.new(StringDisplayImpl.new("Hello, World"))
    d3 = CountDisplay.new(StringDisplayImpl.new("Hello, Universe"))

    d1.display
    d2.display
    d3.display
    d3.mult_display(5)
  end
end

Main.call
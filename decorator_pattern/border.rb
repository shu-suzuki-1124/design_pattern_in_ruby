require "./display.rb"

class Border
  include Display

  def initialize(display)
    @display = display
  end
end

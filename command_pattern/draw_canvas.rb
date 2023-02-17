require "./drawable.rb"

class DrawCanvas
  include Drawable

  def initialize(history)
    @history = history
  end

  def paint
    @history.execute
  end

  def draw(x, y)
    puts "x: #{x}, y: #{y}"
  end
end
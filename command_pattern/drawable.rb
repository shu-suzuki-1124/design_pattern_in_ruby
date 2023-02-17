module Drawable
  def draw
    raise NotImplementedError.new("#{self.class}は#{__method__}を定義する必要があります")
  end
end
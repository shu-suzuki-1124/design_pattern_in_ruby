require "./display.rb"

class CountDisplay < Display
  def initialize(impl)
    super(impl)
  end

  def mult_display(i)
    open
    i.times { print }
    close
  end
end

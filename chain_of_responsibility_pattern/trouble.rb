class Trouble
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def to_string
    "[Trouble#{@num}]"
  end
end

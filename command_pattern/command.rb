module Command
  def execute
    raise NotImplementedError.new("#{self.class}は#{__method__}を定義する必要があります")
  end
end

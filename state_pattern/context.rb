module Context
  def set_clock
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
  
  def change_state
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def call_security_center
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def recording
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

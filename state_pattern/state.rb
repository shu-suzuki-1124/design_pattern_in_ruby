module State
  def do_clock
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def do_use
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def do_alarm
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def do_phone
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

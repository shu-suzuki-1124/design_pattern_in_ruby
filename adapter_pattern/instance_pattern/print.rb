class Print
  def print_weak
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def print_strong
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

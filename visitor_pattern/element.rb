module Element
  def accept(visitor)
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

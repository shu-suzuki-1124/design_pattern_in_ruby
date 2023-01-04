module Product
  def use(string)
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def create_copy
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

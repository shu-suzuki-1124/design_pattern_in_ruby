module Observer
  def update(generator)
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

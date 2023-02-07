module Collegue
  def set_mediator
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def set_colleague_enabled(enabled)
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

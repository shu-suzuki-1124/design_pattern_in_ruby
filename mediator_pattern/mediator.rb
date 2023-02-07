module Mediator
  def create_colleagues
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def colleague_changed
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

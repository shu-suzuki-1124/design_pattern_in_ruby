module Visitor
  def visit(obj)
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

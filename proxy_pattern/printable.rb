module Printable
  def print
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def get_printer_name
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def set_printer_name
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end
end

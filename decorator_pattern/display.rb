module Display
  def get_columns
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def get_rows
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def get_row_text(row)
    raise NotImplementedError.new("#{self.class}##{__method__}を定義してください")
  end

  def show
    get_rows.times { |i| puts get_row_text(i) }
  end
end

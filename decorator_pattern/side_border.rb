require "./border.rb"

class SideBorder < Border
  def initialize(display, ch)
    super(display)
    @border_char = ch
  end

  def get_columns
    1 + @display.get_columns + 1
  end

  def get_rows
    @display.get_rows
  end

  def get_row_text(row)
    @border_char + @display.get_row_text(row) + @border_char
  end
end
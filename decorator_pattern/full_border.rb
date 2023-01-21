require "./border.rb"

class FullBorder < Border
  def initialize(display)
    super(display)
  end

  def get_columns
    1 + @display.get_columns + 1
  end

  def get_rows
    1 + @display.get_rows + 1
  end

  def get_row_text(row)
    if row == 0 || row == @display.get_rows + 1
      "+ #{make_line("-", @display.get_columns)} +"
    else
      "|#{@display.get_row_text(row - 1)}|"
    end
  end

  def make_line(ch, count)
    line = ""
    count.times { line += ch }
    line
  end
end

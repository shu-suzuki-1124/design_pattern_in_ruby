require "./display.rb"

class StringDisplay
  include Display

  def initialize(string)
    @string = string
  end

  def get_columns
    @string.size
  end

  def get_rows
    1
  end

  def get_row_text(row)
    @string if row.zero?
  end
end
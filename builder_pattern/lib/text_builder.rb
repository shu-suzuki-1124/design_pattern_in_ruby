class TextBuilder
  def initialize
    @sb = ""
  end

  def make_title(title)
    @sb += "========================\n"
    @sb += "『"
    @sb += title
    @sb += "』\n\n"
  end

  def make_string(str)
    @sb += "■"
    @sb += str
    @sb += "\n\n"
  end

  def make_items(items)
    items.each do |item|
      @sb += "・"
      @sb += item
      @sb += "\n"
    end
    @sb += "\n"
  end

  def close
    @sb += "========================\n"
    puts @sb
  end
end
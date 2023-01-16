require "./factory/link.rb"

class DivLink < Link
  def initialize(caption, url)
    super(caption, url)
  end

  def make_html
    "<div class=\"LINK\"><a href=\"" + @url + "\">" + @caption + "</a></div>\n"
  end
end
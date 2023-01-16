require "./factory/page.rb"

class ListPage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    sb = ""
    sb += "<!DOCTYPE html>\n"
    sb += "<html>\n"
    sb += "<head><title>\n"
    sb += @title
    sb += "</title></head>\n"
    sb += "<body>\n"
    sb += "<h1>\n"
    sb += @title
    sb += "</h1>\n\n"
    sb += "<ul>\n"
    @contents.each do |content|
      sb += content.make_html
    end
    sb += "</ul>\n"
    sb += "<hr><address>"
    sb += @author
    sb += "</address>\n"
    sb += "</body></html>\n"
    sb
  end
end
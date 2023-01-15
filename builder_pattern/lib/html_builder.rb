require "./lib/builder.rb"

class HtmlBuilder < Builder
  def initialize
    @filename = "utitled.html"
    @sb = ""
  end

  def make_title(title)
    @filename = "#{title}.html"
    @sb += "<!DOCTYPE html>\n"
    @sb += "<html>\n"
    @sb += "<head><title>\n"
    @sb += title
    @sb += "</title><head>\n"
    @sb += "<body>\n"
    @sb += "<h1>\n"
    @sb += title
    @sb += "</h1>\n\n"
  end

  def make_string(str)
    @sb += "<p>"
    @sb += str
    @sb += "</p>\n\n"
  end

  def make_items(items)
    @sb += "<ul>"
    items.each do |item|
      @sb += "<li>"
      @sb += item
      @sb += "</li>\n"
    end
    @sb += "</ul>\n\n"
  end

  def close
    @sb += "</body>"
    @sb += "</html>\n"
    begin
      writer = File.new(@filename, "w")
      writer.puts(@sb)
      writer.close
    rescue => e
      pp e.message
    end
    puts "HTMLファイル: #{@filename}が作成されました"
  end
end
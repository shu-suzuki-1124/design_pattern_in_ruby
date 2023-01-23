class HtmlWriter

  def initialize(writer)
    @writer = writer
  end

  def title(title)
    @writer.write("<!DOCTYPE html>")
    @writer.write("<html>")
    @writer.write("<head>")
    @writer.write("<title> #{title} </title>")
    @writer.write("</head>")
    @writer.write("<body>")
    @writer.write("\n")
    @writer.write("<h1> #{title} </h1>")
    @writer.write("\n")
  end

  def paragraph(msg)
    @writer.write("<p>#{msg}</p>")
    @writer.write("\n")
  end

  def link(href, caption)
    paragraph("<a href=\"#{href}\"> #{caption} </a>")
  end

  def mailto(mailaddr, username)
    link("mailto: #{mailaddr}", username)
  end

  def close
    @writer.write("</body>")
    @writer.write("</html>")
    @writer.write("\n")
    @writer.close
  end
end

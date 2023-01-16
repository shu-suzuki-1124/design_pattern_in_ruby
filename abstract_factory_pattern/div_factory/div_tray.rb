require "./factory/tray.rb"

class DivTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    sb = ""
    sb += "<p><b>\n"
    sb += @caption
    sb += "\n</b></p>\n"
    sb += "<div class=\"TRAY\">"
    @tray.each do |tray|
      sb += tray.make_html
    end
    sb += "</div>\n"
    sb
  end
end

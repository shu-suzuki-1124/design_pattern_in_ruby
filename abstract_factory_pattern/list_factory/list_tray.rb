require "./factory/tray.rb"

class ListTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    sb = ""
    sb += "<li>\n"
    sb += @caption
    sb += "\n<ul>\n"
    @tray.each do |tray|
      sb += tray.make_html
    end
    sb += "</ul>\n"
    sb += "</li>\n"
    sb
  end
end
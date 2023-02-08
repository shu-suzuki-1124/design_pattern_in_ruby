require "./pagemaker/page_maker.rb"

class Main
  def self.call
    PageMaker.make_welcome_page("hyuki@example.co", "welcome.html")
  end
end

Main.call
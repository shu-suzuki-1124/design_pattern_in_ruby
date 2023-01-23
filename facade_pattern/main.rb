require "./pagemaker/page_maker.rb"

class Main
  def self.call
    new.call
  end

  def call
    PageMaker.make_welcome_page("hyuki@example.co", "welcome.html")
  end
end

Main.call
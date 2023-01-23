require "./pagemaker/database.rb"
require "./pagemaker/html_writer.rb"

class PageMaker
  def self.make_welcome_page(mailaddr, filename)
    mailprop = Database.get_properties("maildata")
    user_name = mailprop.property(mailaddr)
    writer = HtmlWriter.new(File.new(filename, "a"))
    writer.title("#{user_name}'s web page")
    writer.paragraph("Welcome to #{user_name}'s web page")
    writer.paragraph("Nice to meet you!")
    writer.mailto(mailaddr, user_name)
    writer.close
    puts "#{filename} is created for #{mailaddr}(#{user_name})"
  rescue => e
    puts e.message
  end
end

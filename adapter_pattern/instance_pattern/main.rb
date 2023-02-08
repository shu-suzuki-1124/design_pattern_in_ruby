require './print_banner.rb'

class Main
  def self.call
    print_banner = PrintBanner.new("Hello World")
    puts print_banner.print_weak
    puts print_banner.print_strong
  end
end

Main.call
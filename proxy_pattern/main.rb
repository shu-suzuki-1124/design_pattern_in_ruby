require "./printer_proxy.rb"

class Main
  def self.call
    p = PrinterProxy.new("Alice")
    puts "現在の名前は #{p.get_printer_name} です"
    p.set_printer_name("bob")
    puts "現在の名前は #{p.get_printer_name} です"
    p.print("Hello World")
  end
end

Main.call
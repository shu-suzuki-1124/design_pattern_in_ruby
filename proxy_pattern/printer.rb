require "./printable.rb"

class Printer
  include Printable
  attr_accessor :name

  def initialize(name)
    @name = name
    heavy_job("Printerのインスタンス生成中")
  end

  def get_printer_name
    @name
  end

  def set_printer_name(name)
    @name = name
  end

  def print(string)
    puts "=== #{@name} ==="
    puts string
  end

  def heavy_job(msg)
    puts msg
    5.times do |i|
      sleep 3
      puts "#{i}回目"
    end
    puts "Finish!!!"
  end
end

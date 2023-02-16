require "./printable"
require "./printer.rb"

class PrinterProxy
  include Printable
  def initialize(name)
    @name = name
    @real = nil
  end

  def get_printer_name
    @name
  end

  def set_printer_name(name)
    @real.set_printer_name(name) if !@real.nil?
    @name = name
  end

  def print(string)
    realize
    @real.print(string)
  end

  def realize
    @real = Printer.new(@name) if @real.nil?
  end
end

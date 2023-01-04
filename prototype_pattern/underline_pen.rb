require './product.rb'

class UnderlinePen
  include Product

  def initialize(ulchar)
    @ulchar = ulchar
  end

  def use(str)
    puts str
    str.length.times { print @ulchar }
    puts ''
  end

  def create_copy
    p = nil
    p = clone
  rescue ArgumentError => e
    puts e.message
  end
end

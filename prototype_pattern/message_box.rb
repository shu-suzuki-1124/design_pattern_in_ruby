require './product.rb'

class MessageBox
  include Product

  def initialize(decochar)
    @decochar = decochar
  end

  def use(str)
    puts ''
    (1 + str.bytes.length + 1).times { print @decochar }
    puts ''
    puts @decochar + str + @decochar
    (1 + str.length + 1).times { print @decochar }
    puts ''
  end

  def create_copy
    p = nil
    p = clone
  rescue ArgumentError => e
    puts e.message
  end
end

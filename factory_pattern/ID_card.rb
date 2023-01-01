require './product.rb'

class IDCard < Product

  def initialize(owner)
    @owner = owner
    puts "#{@owner} のカードを作ります"
  end

  def use
    puts "#{@owner} のカードを使います"
  end

  def to_string
    "[IDCard: #{@owner}]"
  end

  def get_owner
    @owner
  end
end

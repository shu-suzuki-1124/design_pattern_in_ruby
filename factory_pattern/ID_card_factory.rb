require './factory.rb'
require './ID_card.rb'

class IDCardFactory < Factory

  def create_product(owner)
    IDCard.new(owner)
  end

  def register_product(product)
    puts "#{product}を登録しました。"
  end
end
require './ID_card_factory.rb'

class Main
  def self.call
    new.call
  end

  def call
    factory = IDCardFactory.new
    card1 = factory.create("Shu Suzuki")
    card2 = factory.create("MESSI")
    card3 = factory.create("graph")
    card1.use
    card2.use
    card3.use
  end
end

Main.call
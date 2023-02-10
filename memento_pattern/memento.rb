class Memento
  def initialize(money)
    @money = money
    @fruits = []
  end

  def get_money
    @money
  end

  def add_fruits(fruit)
    @fruits << fruit
  end

  def get_fruits
    @fruits
  end
end

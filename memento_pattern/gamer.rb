require "./memento.rb"

class Gamer
  FRUIT_NAME = ["りんご", "ぶどう", "バナナ", "みかん"]

  def initialize(money)
    @money = money
    @fruits = []
  end

  def get_money
    @money
  end

  def bet
    dice = Random.rand(6) + 1
    case dice
    when 1
      @money += 100
      puts "所持金が増えました"
    when 2
      @money /= 2
      puts "所持金が半分になりました"
    when 6
      f = get_fruits
      puts "フルーツ#{f}をもらいました"
      @fruits << f
    else
      puts "何も起こりませんでした"
    end
  end

  def create_memento
    m = Memento.new(@money)
    @fruits.each do |fruit|
      m.add_fruits(fruit) if fruit.start_with?("おいしい")
    end
    m
  end

  def restore_memento(memento)
    @money = memento.get_money
    @fruits = memento.get_fruits
  end

  def get_results
    "[money=#{@money}, fruits=#{@fruits}]"
  end

  def get_fruits
    fruit = FRUIT_NAME[Random.rand(FRUIT_NAME.length)]
    return "おいしい#{fruit}" if [true, false].sample

    fruit
  end
end
class Player
  attr_accessor :name

  def initialize(name, strategy)
    @name = name
    @strategy = strategy
    @win_count = 0
    @lose_count = 0
    @game_count = 0
  end

  def next_hand
    @strategy.next_hand
  end

  def win
    @strategy.study(true)
    @win_count += 1
    @game_count += 1
  end

  def lose
    @strategy.study(false)
    @lose_count += 1
    @game_count += 1
  end

  def even
    @game_count += 1
  end

  def get_result
    "name: #{@name}, gamecount: #{@game_count}, wincount: #{@win_count}, losecount: #{@lose_count}"
  end
end

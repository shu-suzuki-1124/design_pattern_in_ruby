require "./strategy.rb"
require "./hand.rb"

class WinningStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
    @won = false
    @prev_hand = Hand.get_hand(@random.rand(0..2))
  end

  def next_hand
    return @prev_hand = Hand.get_hand(@random.rand(0..2)) if !@win

    @prev_hand
  end

  def study(win)
    @won = win
  end
end

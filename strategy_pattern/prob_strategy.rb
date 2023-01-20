require "./strategy.rb"
require "./hand.rb"

class ProbStrategy < Strategy
  def initialize(seed)
    @random = Random.new(seed)
    @prev_hand_value = 0
    @current_hand_value = 0
    @history = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
  end

  def next_hand
    bet = @random.rand(get_sum(@current_hand_value))
    hand_value = get_hand_value(bet)
    @prev_hand_value = @current_hand_value
    @current_hand_value = hand_value
    Hand.get_hand(hand_value)
  end

  def study(win)
    return @history[@prev_hand_value][@current_hand_value] += 1 if win

    @history[@prev_hand_value][(@current_hand_value + 1) % 3] += 1
    @history[@prev_hand_value][(@current_hand_value + 2) % 3] += 1
  end

  private

  def get_sum(hand_value)
    sum = 0
    3.times { |i| sum += @history[hand_value][i] }
    sum
  end

  def get_hand_value(bet)
    return 0 if bet < @history[@current_hand_value][0]
    return 1 if bet < @history[@current_hand_value][0] + @history[@current_hand_value][1]
    2
  end
end
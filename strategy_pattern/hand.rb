class Hand
  # 0: グー, 1: チョキ, 2: パー
  STRATEGY_CHOISE = [0, 1, 2].freeze

  attr_accessor :hand_value

  def initialize(name, hand_value)
    @name = name
    @hand_value = hand_value
  end

  def self.get_hand(hand)
    Hand.new(@name, STRATEGY_CHOISE[hand])
  end

  def is_stronger_than?(hand)
    fight(hand) == 1
  end

  def is_weaker_than?(hand)
    fight(hand) == -1
  en                 d

  def fight(hand)
    return 0 if self == hand
    return 1 if (hand.hand_value + 1) % 3 == hand_value
    -1
  end
end
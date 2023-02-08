require "./winning_strategy.rb"
require "./prob_strategy.rb"
require "./player.rb"

class Main
  def self.call(num1, num2)
    seed1 = Random.rand(0..2)
    seed2 = Random.rand(0..2)

    player1 = Player.new("Taro", WinningStrategy.new(num1))
    player2 = Player.new("Hana", ProbStrategy.new(num2))

    100000.times do
      next_hand1 = player1.next_hand
      next_hand2 = player2.next_hand

      if next_hand1.is_stronger_than?(next_hand2)
        puts "Winner: #{player1.get_result}"
        player1.win
        player2.lose
      elsif
        next_hand2.is_stronger_than?(next_hand1)
        puts "Winner: #{player2.get_result}"
        player1.lose
        player2.win
      else
        puts "Even..."
        player1.even
        player2.even
      end
    end

    puts "Total Results..."
    puts player1.get_result
    puts player2.get_result
  end
end

Main.call(1000, 244)
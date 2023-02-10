require "./gamer.rb"

class Main
  def self.call
    gamer = Gamer.new(100)
    memento = gamer.create_memento

    100.times do |i|
      puts "==== #{i}"
      puts "現状: #{gamer.get_results}"
      gamer.bet
      puts "所持金は#{gamer.get_money}"
      if gamer.get_money > memento.get_money
        puts "だいぶ増えたので、現在の状態を保存しておこう"
        memento = gamer.create_memento
      elsif gamer.get_money < memento.get_money / 2
        puts "だいぶ減ったので、以前の状態に戻しておこう"
        gamer.restore_memento(memento)
      end
      sleep 1
    end
  end
end

Main.call
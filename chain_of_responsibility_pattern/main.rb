require "./limit_support.rb"
require "./no_support.rb"
require "./odd_support.rb"
require "./special_support.rb"
require "./trouble.rb"

class Main
  def self.call
    alice = NoSupport.new("Alice")
    bob = LimitSupport.new("Bob", 100)
    charlie = SpecialSupport.new("Charlie", 429)
    diana = LimitSupport.new("diana", 200)
    elmo = OddSupport.new("Elmo")
    fred = LimitSupport.new("Fred", 300)

    alice.set_next(bob).set_next(charlie).set_next(diana).set_next(elmo).set_next(fred)

    500.times do |i|
      alice.support(Trouble.new(i)) if i % 33 == 0
    end
  end
end

Main.call
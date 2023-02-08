require "./digit_observer.rb"
require "./graph_observer.rb"
require "./random_number_generator.rb"

class Main
  def self.call
    generator = RandomNumberGenerator.new
    observer1 = DigitObserver.new
    observer2 = GraphObserver.new
    generator.add_observer(observer1)
    generator.add_observer(observer2)
    generator.execute
  end
end

Main.call
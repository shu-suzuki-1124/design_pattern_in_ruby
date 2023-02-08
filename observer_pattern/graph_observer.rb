require "./observer.rb"

class GraphObserver
  include Observer

  def update(generator)
    puts "GraphObserver:"
    count = generator.get_number
    puts "*" * count
    sleep 1
  end
end
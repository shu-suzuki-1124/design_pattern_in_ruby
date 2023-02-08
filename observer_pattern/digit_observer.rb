require "./observer.rb"

class DigitObserver
  include Observer

  def update(generator)
    puts "DisitObserver: #{generator.get_number}"
    sleep 1
  end
end
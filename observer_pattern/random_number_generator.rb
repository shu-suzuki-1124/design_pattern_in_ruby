require "./number_generator.rb"

class RandomNumberGenerator < NumberGenerator
  def initialize
    super
    @number = 0
  end

  def get_number
    @number
  end

  def execute
    20.times do |i|
      @number = rand(50)
      notify_observer
    end
  end
end

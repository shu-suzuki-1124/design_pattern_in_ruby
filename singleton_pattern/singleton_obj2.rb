require 'singleton'

class SingletonObj2
  include Singleton
  attr_accessor :counter

  def initialize
    @counter = 0
  end
end

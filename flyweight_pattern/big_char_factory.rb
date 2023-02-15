require "singleton"

class BigCharFactory
  include Singleton
  def initialize
    @pool = {}
  end

  def get_instance
    return self
  end

  def get_big_char(charname)
    bc = @pool[charname]
    if bc.nil?
      bc = BigChar.new(charname)
      @pool[charname] = bc
    end
    bc
  end
end
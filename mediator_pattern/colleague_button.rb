require "./colleague.rb"

class ColleagueButton
  include Collegue
  attr_accessor :mediator, :enabled

  def initialize(caption)
    @caption = caption
    @enabled = false
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    @enabled = enabled
  end
end

require "./colleague.rb"

class ColleageTextField
  include Collegue
  attr_accessor :mediator, :enabled, :text

  def initialize(text)
    @text = text
    @enabled = false
    @background_color = "white"
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    @enabled = enabled
    @background_color = enabled ? "white" : "light_gray"
  end

  def text_value_changed(text)
    @text = text
    @mediator.colleague_changed
  end
end
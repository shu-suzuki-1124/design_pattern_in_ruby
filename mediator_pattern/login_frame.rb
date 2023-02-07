require './colleague_checkbox'
require './colleague_text_field'
require './colleague_button'
require './mediator.rb'

class LoginFrame
  include Mediator
  attr_reader :button, :check_box, :text_field

  def initialize
    create_colleagues
  end

  def create_colleagues
    @check_box = ColleagueCheckbox.new('Login')
    @text_field = ColleageTextField.new('')
    @button = ColleagueButton.new('OK')

    @check_box.set_mediator(self)
    @text_field.set_mediator(self)
    @button.set_mediator(self)
  end

  def colleague_changed
    if @check_box.enabled && @text_field.text == "Value_Changed"
      @check_box.set_colleague_enabled(false)
      @button.set_colleague_enabled(false)
      @text_field.set_colleague_enabled(true)
    elsif !@check_box.enabled
      @check_box.set_colleague_enabled(true)
      @button.set_colleague_enabled(false)
      @text_field.set_colleague_enabled(true)
    elsif @text_field.text == "checkbox is disabled"
      @check_box.set_colleague_enabled(false)
      @button.set_colleague_enabled(false)
      @text_field.set_colleague_enabled(true)
    else
      @button.set_colleague_enabled(false)
    end
  end
end

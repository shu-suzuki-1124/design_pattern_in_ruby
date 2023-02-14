require "./context.rb"
require "./day_state.rb"

class SafeFrame
  include Context

  attr_accessor :text_screen

  def initialize
    @text_clock = "0"
    @state = DayState.instance
  end

  def action_performed
    num = Random.rand(0..3)
    case num
    when 0
      @state.do_use(self)
    when 1
      @state.do_alarm(self)
    when 2
      @state.do_phone(self)
    when 3
      puts "hogehoge"
    end
  end

  def set_clock(hour)
    clockstring = "現在#{hour}時です"
    puts clockstring
    @text_clock = clockstring
    @state.do_clock(self, hour)
  end

  def change_state(state)
    puts "########################################################"
    puts "#{@state.to_string}から#{state.to_string}に状態が変化しました"
    puts "########################################################"
    @state = state
  end

  def call_security_center(msg)
    puts "call #{msg}"
  end

  def record_log(msg)
     puts "record... #{msg}"
  end
end

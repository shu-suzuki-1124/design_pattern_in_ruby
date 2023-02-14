require "./night_state.rb"
require "./state.rb"
require 'singleton'

class DayState
  include State
  include Singleton

  def do_clock(context, hour)
    if hour < 9 || 17 <= hour
      context.change_state(NightState.instance)
    end
  end

  def do_use(context)
    context.record_log("金庫使用(昼間)")
  end

  def do_alarm(context)
    context.call_security_center("非常ベル(昼間)")
  end

  def do_phone(context)
    context.call_security_center("通常の通話(昼間)")
  end

  def to_string
    "[昼間]"
  end
end

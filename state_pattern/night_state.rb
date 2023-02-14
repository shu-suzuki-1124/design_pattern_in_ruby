require "./day_state.rb"
require "./state.rb"
require 'singleton'

class NightState
  include State
  include Singleton

  def do_clock(context, hour)
    if 9 <= hour && hour < 17
      context.change_state(DayState.instance)
    end
  end

  def do_use(context)
    context.record_log("金庫使用(夜間)")
  end

  def do_alarm(context)
    context.call_security_center("非常ベル(夜間)")
  end

  def do_phone(context)
    context.call_security_center("通常の通話(夜間)")
  end

  def to_string
    "[夜間]"
  end
end

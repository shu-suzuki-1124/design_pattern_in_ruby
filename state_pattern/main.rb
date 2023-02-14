require "./safe_frame.rb"

class Main
  def self.call
    frame = SafeFrame.new
    24.times do |i|
      frame.action_performed
      frame.set_clock(i)
    end
  end
end

Main.call
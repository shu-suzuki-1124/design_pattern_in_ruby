require './manager.rb'
require './message_box.rb'
require './underline_pen.rb'

class Main
  def self.call
    manager = Manager.new
    upen = UnderlinePen.new('-')
    mbox = MessageBox.new('*')
    sbox = MessageBox.new('/')

    manager.register('strong message', upen)
    manager.register('warning message', mbox)
    manager.register('slash message', sbox)
    
    p1 = manager.create("strong message")
    p1.use("hello world")
    p2 = manager.create("warning message")
    p2.use("hello world")
    p3 = manager.create("slash message")
    p3.use("hello world")
  end
end

Main.call

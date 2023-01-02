require './singleton_obj.rb'
require './singleton_obj2.rb'

class Main

  def self.call
    new.call
  end

  def self.call2
    new.call2
  end

  def call
    puts "Start."

    obj1 = SingletonObj.get_instance
    obj2 = SingletonObj.get_instance

    if obj1 == obj2
      puts "obj1とobj2は同じinstanceです"
    else
      puts "obj1とobj2は異なるinstanceです"
    end

    puts "End."
  end

  def call2
    obj1 = SingletonObj2.instance
    obj1.counter += 1
    puts obj1.counter

    obj2 = SingletonObj2.instance
    obj2.counter += 1
    puts obj2.counter
  end
end

Main.call
Main.call2

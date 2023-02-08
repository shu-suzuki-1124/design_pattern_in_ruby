class NumberGenerator
  def initialize
    @observers = []
  end
  
  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observer
    @observers.each { |o| o.update(self) }
  end

  def get_number
    raise NotImplementedError
  end

  def execute
    raise NotImplementedError
  end
end
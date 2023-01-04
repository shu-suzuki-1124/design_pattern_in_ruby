class Manager

  def initialize
    @showcase = {}
  end

  def register(str, prototype)
    @showcase[str] = prototype
  end

  def create(prototype_name)
    p = @showcase[prototype_name]
    p.create_copy
  end
end
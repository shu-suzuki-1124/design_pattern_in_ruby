class Support
  def initialize(name)
    @name = name
    @next = nil
  end

  def set_next(next_field)
    @next = next_field
    next_field
  end

  def support(trouble)
    return done(trouble) if resolve(trouble)
    return @next.support(trouble) if !@next.nil?

    failed(trouble)
  end

  def resolve
    raise NotImplementedError
  end

  def done(trouble)
    puts "#{trouble.to_string} is resolved by #{@name}."
  end

  def failed(trouble)
    puts "#{trouble.to_string} cannot be resolved."
  end
end

require "./support.rb"

class LimitSupport < Support
  def initialize(name, limit)
    super(name)
    @limit = limit
  end

  def resolve(trouble)
    return true if trouble.num < @limit

    false
  end
end

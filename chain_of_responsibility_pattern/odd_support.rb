require "./support.rb"

class OddSupport < Support
  def initialize(name)
    super(name)
  end

  def resolve(trouble)
    return true if trouble.num % 2 == 1

    false
  end
end

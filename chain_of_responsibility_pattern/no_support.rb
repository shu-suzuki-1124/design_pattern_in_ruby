require "./support.rb"

class NoSupport < Support
  def initialize(name)
    super(name)
  end

  def resolve(trouble)
    false
  end
end

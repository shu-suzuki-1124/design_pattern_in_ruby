require "./support.rb"

class SpecialSupport < Support
  def initialize(name, number)
    super(name)
    @number = number
  end

  def resolve(trouble)
    return true if trouble.num == @number

    false
  end
end

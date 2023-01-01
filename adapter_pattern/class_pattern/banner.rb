# あらじめ提供されてるとされるclass
class Banner
  def initialize(string)
    @string = string
  end

  def show_with_paren
    puts %Q["#{@string}"]
  end

  def show_with_aster
    puts "*#{@string}*"
  end
end

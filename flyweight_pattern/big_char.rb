class BigChar
  def initialize(charname)
    @charname = charname
    @fontdata = []
    File.open("./data/big#{charname}.txt", 'r').each do |line|
      @fontdata << "#{line}\n"
    end
  end

  def print
    puts @fontdata
  end
end

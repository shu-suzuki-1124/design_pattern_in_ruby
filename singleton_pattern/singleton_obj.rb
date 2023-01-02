class SingletonObj

  def self.get_instance
    @@singleton
  end

  private

  @@singleton = SingletonObj.new

  def initialize
    puts "インスタンスを生成しました"
  end
end

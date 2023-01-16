class Factory
  def self.factory(klass)
    new.factory(klass)
  end

  def factory(klass)
    begin
      factory = klass.new
    rescue => e
      puts "クラス #{klass}が見つかりません"
      puts e.message
    end
    factory
  end

  def create_link(caption, url)
    raise NotImplementedError
  end

  def create_tray(caption)
    raise NotImplementedError
  end

  def create_page(title, author)
    raise NotImplementedError
  end
end
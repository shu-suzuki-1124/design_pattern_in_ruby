class Page
  def initialize(title, author)
    @title = title
    @author = author
    @contents = []
  end

  def add(item)
    @contents << item
  end

  def output(filename)
    begin
      filename = "#{filename}.html"
      writer = File.new(filename, 'w')
      writer.puts(self.make_html)
      writer.close
      puts "#{filename}を作成しました。"
    rescue => e
      puts e.message
    end
  end

  def make_html
    raise NotImplementedError
  end
end

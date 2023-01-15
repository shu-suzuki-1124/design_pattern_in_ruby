require "./lib/director.rb"
require "./lib/text_builder.rb"
require "./lib/html_builder.rb"

class Main
  def initialize(filetype)
    @filetype = filetype
  end

  def self.call(filetype)
    new(filetype).call
  end

  def call
    if @filetype == "html"
      html_builder = HtmlBuilder.new
      director = Director.new(html_builder)
      director.construct
      filename = html_builder.get_html_result
      puts "HTMLファイル: #{filename}が作成されました"
    elsif @filetype == "text"
      text_builder = TextBuilder.new
      director = Director.new(text_builder)
      director.construct
      result = text_builder.get_text_result
      puts result
    else
      puts "please write html or text!!!"
    end
  end
end

Main.call("html")
Main.call("text")
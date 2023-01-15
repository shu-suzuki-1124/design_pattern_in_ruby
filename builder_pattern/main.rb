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
    director = Director.new(builder)
    director.construct
  end

  private
  
  def builder
    return HtmlBuilder.new if @filetype == "html"
    return TextBuilder.new if @filetype == "text"

    raise StandardError.new("引数にはhtmlかtextを指定してください")
  end
end

Main.call("html")
Main.call("text")
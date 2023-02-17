require "./node.rb"

class PrimitiveCommandNode
  class ParseException < StandardError; end
  include Node

  def parse(context)
    @name = context.current_token
    context.skip_token(@name)
    raise ParseException, "#{@name} is undefined." unless %w[go right left].include?(@name)
  rescue ParseException => e
    puts e
  end

  def to_string
    @name
  end
end
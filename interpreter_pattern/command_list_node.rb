require "./node.rb"
require "./command_node.rb"

class CommandListNode
  class ParseException < StandardError; end
  include Node
  def initialize
    @list = []
  end

  def parse(context)
    while true do
      if context.current_token.nil?
        raise ParseException, 'Missing `end`'
      elsif context.current_token == 'end'
        context.skip_token('end')
        break
      else
        command_node = CommandNode.new
        command_node.parse(context)
        @list << command_node
      end
    end
  rescue ParseException => e
    puts e
  end

  def to_string
    @list.map { |l| l.to_string }
  end
end
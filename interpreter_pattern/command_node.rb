require "./node.rb"
require "./repeat_command_node.rb"
require "./primitive_command_node.rb"

class CommandNode
  include Node
  def parse(context)
    @node = if context.current_token == 'repeat'
              RepeatCommandNode.new
            else
              PrimitiveCommandNode.new
            end
    @node.parse(context)
  end

  def to_string
    @node.to_string
  end
end

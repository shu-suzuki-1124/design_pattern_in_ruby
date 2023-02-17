require "./node.rb"
require "./command_node.rb"

class RepeatCommandNode
  include Node

  def parse(context)
    context.skip_token('repeat')
    @number = context.current_number
    context.next_token
    @command_list_node = CommandListNode.new
    @command_list_node.parse(context)
  end

  def to_string
    "repeat #{@number} times: #{@command_list_node.to_string}"
  end
end

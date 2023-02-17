require "./node.rb"
require "./command_list_node.rb"

class ProgramNode
  include Node

  def parse(context)
    context.skip_token('program')
    @command_list_node = CommandListNode.new
    @command_list_node.parse(context)
  end

  def to_string
    "[program #{@command_list_node.to_string}]"
  end
end

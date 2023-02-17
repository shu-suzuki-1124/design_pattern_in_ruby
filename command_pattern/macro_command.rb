require "./command.rb"

class MacroCommand
  include Command

  def initialize
    @commands = []
  end

  def execute
    @commands.each do |cmd|
      cmd.execute
    end
  end

  def append(cmd)
    @commands << cmd
  end

  def undo
    @commands.pop if !@commands.empty?
  end

  def clear
    @commands.clear
  end
end
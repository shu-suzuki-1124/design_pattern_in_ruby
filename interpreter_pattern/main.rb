require "./program_node.rb"
require "./context.rb"

class Main
  def self.call
    File.open('program.txt', 'r') do |f|
      f.each_line do |line|
        line_without_indent = line.chomp("")
        puts "text = `#{line_without_indent}`"
        node = ProgramNode.new
        node.parse(Context.new(line_without_indent))
        puts "node = #{node.to_string}".delete("\\").delete("\"")
        puts '----------------------'
        sleep(0.5)
      end
    end
  end
end

Main.call
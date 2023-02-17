require "./draw_command.rb"
require "./macro_command.rb"
require "./draw_canvas.rb"

class Main
  def self.call
    history = MacroCommand.new
    canvas = DrawCanvas.new(history)
    cmd1 = DrawCommand.new(canvas, {x: 100, y: 400})
    cmd2 = DrawCommand.new(canvas, {x: 200, y: 500})
    cmd3 = DrawCommand.new(canvas, {x: 300, y: 600})
    puts "#######描画1########"
    history.append(cmd1)
    cmd1.execute
    puts "#######描画2########"
    history.append(cmd2)
    cmd1.execute
    puts "#######描画3########"
    history.append(cmd3)
    cmd1.execute
    puts "#######first 再描画########"
    canvas.paint
    history.undo
    puts "#######second 再描画########"
    canvas.paint
    history.clear
    puts "#######third 再描画########"
    canvas.paint
  end
end

Main.call
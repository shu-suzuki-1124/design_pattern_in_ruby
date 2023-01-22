require "./visitor.rb"

class ListVisitor
  include Visitor

  def initialize
    @currentdir = ""
  end

  def visit(obj)
     puts "#{@currentdir}/#{obj.to_string}"
     visit_directory(obj) if obj.is_a?(Directory)
  end 

  private

  def visit_directory(directory)
    savedir = @currentdir
    @currentdir = "#{@currentdir}/#{directory.get_name}"
    directory.directory.each { |d| d.accept(self) }
    @currentdir = savedir
  end
end

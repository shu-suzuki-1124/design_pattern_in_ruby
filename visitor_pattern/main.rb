require "./list_visitor.rb"
require "./directory_file.rb"
require "./directory.rb"

class Main
  def self.call
    new.call
  end

  def call
    puts "------------------------------------------------"
    puts "Making root entries..."
    rootdir = Directory.new("root")
    bindir = Directory.new("bin")
    tmprdir = Directory.new("tmp")
    usrdir = Directory.new("user")

    rootdir.add(bindir)
    rootdir.add(tmprdir)
    rootdir.add(usrdir)

    bindir.add(DirectoryFile.new("vi", 10000))
    bindir.add(DirectoryFile.new("latex", 20000))
    rootdir.accept(ListVisitor.new)

    puts "------------------------------------------------"
    puts "Making root entries..."
    yuki = Directory.new("yuki")
    hanako = Directory.new("hanako")
    tomura = Directory.new("tomura")
    usrdir.add(yuki)
    usrdir.add(hanako)
    usrdir.add(tomura)
    yuki.add(DirectoryFile.new("diary.html", 100))
    yuki.add(DirectoryFile.new("Composite.rb", 200))
    hanako.add(DirectoryFile.new("memo.tex", 300))
    tomura.add(DirectoryFile.new("game.doc", 400))
    tomura.add(DirectoryFile.new("junk.mail", 500))
    rootdir.accept(ListVisitor.new)
  end
end

Main.call
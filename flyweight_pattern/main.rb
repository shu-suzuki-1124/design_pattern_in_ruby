require "./big_string.rb"

class Main
  def self.call(args)
    return if args.length == 0

    bs = BigString.new(args)
    bs.print
  end
end

Main.call("0210212020201111")
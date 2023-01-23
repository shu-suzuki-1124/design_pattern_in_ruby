require "./property.rb"

class Database
  def self.get_properties(db)
    filename = "#{db}.txt"
    prop = Property.new(filename)
  end
end

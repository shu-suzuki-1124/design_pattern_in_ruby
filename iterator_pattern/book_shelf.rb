require './iterable.rb'
require './book_shelf_iterator.rb'

class BookShelf < Iterable
  attr_accessor :books, :last

  def initialize(maxsize)
    @books = Array.new(maxsize)
    @last = 0
  end

  def get_book_at(index)
    @books[index]
  end

  def append_book(book)
    @books[@last] = book
    @last += 1
  end

  def iterator
    BookShelfIterator.new(self)
  end
end
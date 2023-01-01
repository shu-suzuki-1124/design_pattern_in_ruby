require './iterator.rb'

class BookShelfIterator < Iterator

  def initialize(book_shelf)
    @book_shelf = book_shelf
    @index = 0
  end

  def has_next?
    @index < @book_shelf.last ? true : false
  end

  def next
    raise NotImplementedError unless @index < @book_shelf.last

    book = @book_shelf.get_book_at(@index)
    @index += 1
    book.name
  end
end
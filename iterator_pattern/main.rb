require './book_shelf.rb'
require './book.rb'

class Main
  BOOK_SHELF_MAX_NUMBER = 4

  def self.call
    book_shelf = BookShelf.new(BOOK_SHELF_MAX_NUMBER)
    BOOK_SHELF_MAX_NUMBER.times { |i| book_shelf.append_book(Book.new("book no.#{i}")) }

    it = book_shelf.iterator
    while it.has_next? do
      book = it.next
      puts book
    end
  end
end

Main.call
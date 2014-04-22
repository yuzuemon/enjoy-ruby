require './booklist.rb'

class BookList
  include Enumerable

  def each
    @booklist.each{|book|
      yield(book)
    }
  end
end

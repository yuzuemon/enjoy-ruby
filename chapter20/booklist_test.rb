require './book.rb'
require './booklist.rb'

booklist = BookList.new

b1 = Book.new("せめて, 本格らしく", "城平京")
b2 = Book.new("Neo Aqua III", "Neo Aqua")

booklist.add(b1)
booklist.add(b2)

print booklist[0].title, "\n"
print booklist[1].title, "\n"


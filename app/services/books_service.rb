class BookService
  module Base
    def self.create_book(user, params)
      book = user.books.new(params)

      if book.save
        book 
      else
        book.errors 
      end
    end
  end
end
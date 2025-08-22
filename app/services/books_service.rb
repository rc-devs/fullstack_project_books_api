class BookService
  module Base
    def self.create_book(user, params) # pass user and book_params (params)
      book = user.books.new(params) # new book added

      if book.save
        book # 'returns' book where it is invoked in controller
      else
        book.errors # errors
      end
    end
  end
end
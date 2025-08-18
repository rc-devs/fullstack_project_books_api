class BookNotificationJob
  include Sidekiq::Job

  def perform(book_id)
    book = Book.find(book_id)
    # Logic to send notification (e.g., email or push notification)
    puts "Notification sent for book: #{book.title} by #{book.author}"
  end
end

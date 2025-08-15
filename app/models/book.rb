class Book < ApplicationRecord
  # callbacks
  after_commit :broadcast_book_event, on: [:create, :update]

  # helpers
  include Rails.application.routes.url_helpers

  # attachments?
  has_one_attached :cover_image

  # validations
  validates :title, presence: true
  validates :author, presence: true
  validates :read, inclusion: { in: [ true, false ] }

  # associations
  belongs_to :user

  # actions
  def cover_image_url
    if self.cover_image.attached?
      Rails.application.routes.url_helpers.rails_blob_url(self.cover_image, only_path: false)
    else
      Rails.root.join('app/assets/images/cover-not-available.jpg')  
    end
  end
  
  def broadcast_book_event
      Pusher.trigger('books-channel', 'book-changed', {
        id: self.id,
        title: self.title,
        author: self.author,
        cover_image_url: self.cover_image_url
      })
    end
end

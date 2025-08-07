class Book < ApplicationRecord
  has_one_attached :cover_image

  # validations
  validates :title, presence: true
  validates :author, presence: true
  validates :read, inclusion: { in: [ true, false ] }

  # associations
  belongs_to :user
end

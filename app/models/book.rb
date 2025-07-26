class Book < ApplicationRecord
  # validations
  validates :title, presence: true
  validates :author, presence: true
  validates :read, inclusion: { in: [ true, false ] }

  # associations
  belongs_to :user
end

require 'rails_helper'

RSpec.describe Book, type: :model do

  # - Valid with all attributes
  context 'Validation Tests: ' do
    it 'is valid with all attributes' do
      book = build(:book)
      expect(book).to be_valid
    end
  end

  context 'invalid attributes' do
    # - Invalid without a title
    it 'is invalid without a title' do
      book = build(:book, title: nil)
      expect(book).not_to be_valid
    end
    # - Invalid without an author
     it 'is invalid without a author' do
      book = build(:book, author: nil)
      expect(book).not_to be_valid
    end
    # - Invalid if `read` is nil
     it 'is invalid without a read status' do
      book = build(:book, read: nil)
      expect(book).not_to be_valid
    end
  end
end

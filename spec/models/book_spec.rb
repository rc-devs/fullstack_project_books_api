require 'rails_helper'

RSpec.describe Book, type: :model do

  # - Valid with all attributes
  context 'valid attributes' do
    it 'is valid with all attributes' do
      book = build(:book)
      expect(book).to be_valid
    end
  end
  # - Invalid without a title
  # - Invalid without an author
  # - Invalid if `read` is nil
  # - Add any necessary validations to your Book model to pass these tests.
end

require 'rails_helper'

RSpec.describe Book, type: :model do
  let!(:book) { create_book(:book, 1) }

  # - Valid with all attributes
  # - Invalid without a title
  # - Invalid without an author
  # - Invalid if `read` is nil
  # - Add any necessary validations to your Book model to pass these tests.
end

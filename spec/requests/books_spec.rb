require 'rails_helper'

RSpec.describe "Books", type: :request do
  let(:expected_book_structure) do
    {
      "id" => Integer,
      "author" => String,
      "title" => String,
      "read" => [ Trueclass, FalseClass ]
    }
  end

  describe "GET /index" do
  # (index, show, create, update, destroy)
    # - Checking for correct JSON structure
    # - Status codes
    # - Count changes on create/destroy
    # - Attribute updates on update
  end
end

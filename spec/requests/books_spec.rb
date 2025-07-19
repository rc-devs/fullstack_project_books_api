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
    before do 
      create_list(:book, 10)
      get "/books"
      @body = JSON.parse(response.body)
    end

    it 'returns books' do
      @body.each do |book|
        expect(book.keys).to contain_exactly(*expected_book_structure)
      end
    end

    it 'returns http status' do
      expect(response).to have_http_status(:success)
    end
  # (index, show, create, update, destroy)
    # - Checking for correct JSON structure
    # - Status codes
    # - Count changes on create/destroy
    # - Attribute updates on update
  end
end
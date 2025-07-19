require 'rails_helper'

RSpec.describe "Books", type: :request do
  let(:expected_book_structure) do
    {
      "id" => Integer,
      "author" => String,
      "title" => String,
      "read" => [ TrueClass, FalseClass ],
      "created_at" => DateTime,
      "updated_at" => DateTime
    }
  end

  # index
  describe "GET /index" do
    let!(:books) { create_list(:book, 10) }
    before do 
      books
       create_list(:book, 10)
      get "/books"
       @body = JSON.parse(response.body)
    end

    # - Checking for correct JSON structure
    it 'returns books' do
      @body.each do |book|
        expect(book.keys).to contain_exactly(*expected_book_structure.keys)
      end
    end

    it 'returns http status' do
      expect(response).to have_http_status(:success)
    end

    # show
    describe "GET /show" do
      let(:book_id) { create(:book).id }

      before do
        get "/books/#{book_id}"
        @body = JSON.parse(response.body)
      end

      # it 'checks for correct structure' do
      #   expect(# needs correct).to contain_exactly(*expected_book_structure)
      # end

       it 'returns http status' do
      expect(response).to have_http_status(:success)
      end
    end
    # create
    # update
    # destroy
    
    # - Status codes
    # - Count changes on create/destroy
    # - Attribute updates on update
  end
end
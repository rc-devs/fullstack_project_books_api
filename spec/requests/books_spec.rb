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
  end

    # show
    describe "GET /show" do
      let(:book_id) { create(:book).id }

      before do
        get "/books/#{book_id}"
        @body = JSON.parse(response.body)
      end

      it 'checks for correct structure' do
        expect(@body.keys).to contain_exactly(*expected_book_structure.keys)
      end

       it 'returns http status' do
      expect(response).to have_http_status(:success)
      end
    end

    # create
    describe "POST /create" do
      before do
        post "/books", params: attributes_for(:book)
        @body = JSON.parse(response.body)
      end

      it 'checks for the correct structure' do
        expect(@body.keys).to contain_exactly(*expected_book_structure.keys)
      end

      # - Count changes on create/destroy
      it 'count of books should increase by 1' do
        expect(Book.count).to eq(1) # no books in array before creation call
      end

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end
    end

    # update
    describe "PUT /update" do
      let (:book_id) { create(:book) }

      before do 
        put "/books/#{book_id}", params: { body: 'updated body' }
        @body = JSON.parse(response.body)
      end

      it 'checks for the correct structure ' do
        expect(body.keys).to contain_exactly(*expected_book_structure.keys)
      end

      it 'checks if body is updated ' do
        expect(Book.find(book_id).bod).to eq('updated body') # - Attribute updates on update
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end
    end

    # destroy
    describe "delete /destroy" do
    let (:book_id) { create(:book).id }

    before do
      delete "/books/#{book_id}"
    end
      # - Count changes on destroy
    it 'decrements the count of books by 1' do
      expect(Book.count).to eq(0) 
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
require 'rails_helper'

RSpec.describe "ProvidedBooks", :type => :request do
  describe "GET /provided_books" do
    it "works! (now write some real specs)" do
      get provided_books_path
      expect(response.status).to be(200)
    end
  end
end

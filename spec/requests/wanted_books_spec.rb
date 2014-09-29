require 'rails_helper'

RSpec.describe "WantedBooks", :type => :request do
  describe "GET /wanted_books" do
    it "works! (now write some real specs)" do
      get wanted_books_path
      expect(response.status).to be(200)
    end
  end
end

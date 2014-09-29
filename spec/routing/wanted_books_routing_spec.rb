require "rails_helper"

RSpec.describe WantedBooksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wanted_books").to route_to("wanted_books#index")
    end

    it "routes to #new" do
      expect(:get => "/wanted_books/new").to route_to("wanted_books#new")
    end

    it "routes to #show" do
      expect(:get => "/wanted_books/1").to route_to("wanted_books#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wanted_books/1/edit").to route_to("wanted_books#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wanted_books").to route_to("wanted_books#create")
    end

    it "routes to #update" do
      expect(:put => "/wanted_books/1").to route_to("wanted_books#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wanted_books/1").to route_to("wanted_books#destroy", :id => "1")
    end

  end
end

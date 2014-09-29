require "rails_helper"

RSpec.describe ProvidedBooksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/provided_books").to route_to("provided_books#index")
    end

    it "routes to #new" do
      expect(:get => "/provided_books/new").to route_to("provided_books#new")
    end

    it "routes to #show" do
      expect(:get => "/provided_books/1").to route_to("provided_books#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/provided_books/1/edit").to route_to("provided_books#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/provided_books").to route_to("provided_books#create")
    end

    it "routes to #update" do
      expect(:put => "/provided_books/1").to route_to("provided_books#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/provided_books/1").to route_to("provided_books#destroy", :id => "1")
    end

  end
end

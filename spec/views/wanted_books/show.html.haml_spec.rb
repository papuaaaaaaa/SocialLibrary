require 'rails_helper'

RSpec.describe "wanted_books/show", :type => :view do
  before(:each) do
    @wanted_book = assign(:wanted_book, WantedBook.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

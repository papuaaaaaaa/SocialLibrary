require 'rails_helper'

RSpec.describe "provided_books/show", :type => :view do
  before(:each) do
    @provided_book = assign(:provided_book, ProvidedBook.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

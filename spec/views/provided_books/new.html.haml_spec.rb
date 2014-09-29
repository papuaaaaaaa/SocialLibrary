require 'rails_helper'

RSpec.describe "provided_books/new", :type => :view do
  before(:each) do
    assign(:provided_book, ProvidedBook.new(
      :name => "MyString"
    ))
  end

  it "renders new provided_book form" do
    render

    assert_select "form[action=?][method=?]", provided_books_path, "post" do

      assert_select "input#provided_book_name[name=?]", "provided_book[name]"
    end
  end
end

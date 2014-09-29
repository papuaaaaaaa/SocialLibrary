require 'rails_helper'

RSpec.describe "wanted_books/new", :type => :view do
  before(:each) do
    assign(:wanted_book, WantedBook.new(
      :name => "MyString"
    ))
  end

  it "renders new wanted_book form" do
    render

    assert_select "form[action=?][method=?]", wanted_books_path, "post" do

      assert_select "input#wanted_book_name[name=?]", "wanted_book[name]"
    end
  end
end

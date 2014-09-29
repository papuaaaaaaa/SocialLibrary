require 'rails_helper'

RSpec.describe "provided_books/edit", :type => :view do
  before(:each) do
    @provided_book = assign(:provided_book, ProvidedBook.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit provided_book form" do
    render

    assert_select "form[action=?][method=?]", provided_book_path(@provided_book), "post" do

      assert_select "input#provided_book_name[name=?]", "provided_book[name]"
    end
  end
end

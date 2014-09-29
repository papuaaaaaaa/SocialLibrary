require 'rails_helper'

RSpec.describe "wanted_books/edit", :type => :view do
  before(:each) do
    @wanted_book = assign(:wanted_book, WantedBook.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit wanted_book form" do
    render

    assert_select "form[action=?][method=?]", wanted_book_path(@wanted_book), "post" do

      assert_select "input#wanted_book_name[name=?]", "wanted_book[name]"
    end
  end
end

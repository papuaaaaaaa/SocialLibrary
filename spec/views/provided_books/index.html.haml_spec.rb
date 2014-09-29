require 'rails_helper'

RSpec.describe "provided_books/index", :type => :view do
  before(:each) do
    assign(:provided_books, [
      ProvidedBook.create!(
        :name => "Name"
      ),
      ProvidedBook.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of provided_books" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

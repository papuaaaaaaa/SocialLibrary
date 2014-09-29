require 'rails_helper'

RSpec.describe "wanted_books/index", :type => :view do
  before(:each) do
    assign(:wanted_books, [
      WantedBook.create!(
        :name => "Name"
      ),
      WantedBook.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of wanted_books" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

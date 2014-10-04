class AddColumnToWantedBook < ActiveRecord::Migration
  def change
    add_column :wanted_books, :auther, :string
    add_column :wanted_books, :isbn, :string
    add_column :wanted_books, :image_url, :string
    add_column :wanted_books, :associate_url, :string
  end
end

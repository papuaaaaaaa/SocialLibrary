class AddColumnToProvidedBook < ActiveRecord::Migration
  def change
    add_column :provided_books, :auther, :string
    add_column :provided_books, :isbn, :string
    add_column :provided_books, :image_url, :string
    add_column :provided_books, :associate_url, :string
  end
end

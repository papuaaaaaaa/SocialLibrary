class AddColumnToProvidedBookUserId < ActiveRecord::Migration
  def change
    add_column :provided_books, :user_id, :integer
  end
end

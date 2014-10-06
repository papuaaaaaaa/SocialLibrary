class AddColumnToWantedBookUserId < ActiveRecord::Migration
  def change
    add_column :wanted_books, :user_id, :integer
  end
end

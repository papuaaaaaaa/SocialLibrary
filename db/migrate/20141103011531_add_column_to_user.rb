class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :community_id, :int
  end
end

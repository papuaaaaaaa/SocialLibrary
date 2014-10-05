class CreateWantedBooks < ActiveRecord::Migration
  def change
    create_table :wanted_books do |t|
      t.string :title

      t.timestamps
    end
  end
end

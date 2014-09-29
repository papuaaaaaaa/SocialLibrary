class CreateWantedBooks < ActiveRecord::Migration
  def change
    create_table :wanted_books do |t|
      t.string :name

      t.timestamps
    end
  end
end

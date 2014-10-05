class CreateProvidedBooks < ActiveRecord::Migration
  def change
    create_table :provided_books do |t|
      t.string :title

      t.timestamps
    end
  end
end

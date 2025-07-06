class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :publisher
      t.integer :year
      t.integer :edition
      t.string :isbn
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end

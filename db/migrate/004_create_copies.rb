class CreateCopies < ActiveRecord::Migration[8.0]
  def change
    create_table :copies do |t|
      t.references :book, foreign_key: true
      t.string :signature
      t.date :acquired_at
      t.date :borrowed_at
      t.date :due_at
      t.date :returned_at
      t.string :reserved_by
      t.timestamps
    end
  end
end

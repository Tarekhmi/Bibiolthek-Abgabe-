class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :given_name
      t.string :family_name
      t.timestamps
    end
  end
end

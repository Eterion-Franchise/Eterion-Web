class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :background
      t.integer :lvl
      t.integer :gold
      t.references :player_class, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end

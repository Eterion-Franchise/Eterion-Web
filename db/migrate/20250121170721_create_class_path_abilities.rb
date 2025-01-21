class CreateClassPathAbilities < ActiveRecord::Migration[8.0]
  def change
    create_table :class_path_abilities do |t|
      t.references :player_class, null: false, foreign_key: true
      t.references :player_class_path, null: false, foreign_key: true
      t.references :ability, null: false, foreign_key: true

      t.timestamps
    end
  end
end

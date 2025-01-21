class CreatePlayerClassPaths < ActiveRecord::Migration[8.0]
  def change
    create_table :player_class_paths do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

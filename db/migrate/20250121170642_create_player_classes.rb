class CreatePlayerClasses < ActiveRecord::Migration[8.0]
  def change
    create_table :player_classes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

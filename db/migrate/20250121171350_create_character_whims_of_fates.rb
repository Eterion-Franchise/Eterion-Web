class CreateCharacterWhimsOfFates < ActiveRecord::Migration[8.0]
  def change
    create_table :character_whims_of_fates do |t|
      t.references :character, null: false, foreign_key: true
      t.references :whims_of_fate, null: false, foreign_key: true

      t.timestamps
    end
  end
end

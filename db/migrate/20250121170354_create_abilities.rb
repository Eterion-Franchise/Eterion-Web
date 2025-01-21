class CreateAbilities < ActiveRecord::Migration[8.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.text :description
      t.integer :lvl_req
      t.integer :whims_req

      t.timestamps
    end
  end
end

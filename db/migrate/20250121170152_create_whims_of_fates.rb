class CreateWhimsOfFates < ActiveRecord::Migration[8.0]
  def change
    create_table :whims_of_fates do |t|
      t.string :name
      t.text :description
      t.text :resolve_up
      t.text :resolve_down

      t.timestamps
    end
  end
end

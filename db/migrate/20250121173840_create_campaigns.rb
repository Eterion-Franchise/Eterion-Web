class CreateCampaigns < ActiveRecord::Migration[8.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :agenda
      t.text :what_happened
      t.references :saga, null: false, foreign_key: true
      t.date :date_played
      t.integer :duration_hrs
      t.integer :duration_min

      t.timestamps
    end
  end
end

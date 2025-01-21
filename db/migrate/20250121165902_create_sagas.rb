class CreateSagas < ActiveRecord::Migration[8.0]
  def change
    create_table :sagas do |t|
      t.string :title
      t.text :description
      t.date :date_started
      t.date :date_finished

      t.timestamps
    end
  end
end

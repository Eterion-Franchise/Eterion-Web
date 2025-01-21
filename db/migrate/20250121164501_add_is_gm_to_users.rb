class AddIsGmToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :is_gm, :boolean
  end
end

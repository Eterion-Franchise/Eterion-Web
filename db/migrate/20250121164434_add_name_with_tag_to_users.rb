class AddNameWithTagToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name_with_tag, :string
  end
end

class Addvalidationonuser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :user_name, :string, null: false
    change_column :users, :user_email, :string, null: false, unique: true
  end
end

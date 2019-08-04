class Addvalidationondog < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :name, :string, null: false
    change_column :dogs, :email, :string, null: false, unique: true
  end
end

class Addvalidationonemployee < ActiveRecord::Migration[5.2]
  def change
    change_column :employees, :name, :string, null: false
    change_column :employees, :email, :string, null: false, unique: true
  end
end

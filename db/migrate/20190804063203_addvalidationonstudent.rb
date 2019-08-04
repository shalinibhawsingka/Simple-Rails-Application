class Addvalidationonstudent < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :name, :string, null: false
    change_column :students, :email, :string, null: false, unique: true
  end
end

class Addvalidationonpost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :name, :string, null: false
  end
end

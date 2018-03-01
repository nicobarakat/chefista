class AddIsChefToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :isChef, :boolean, default: false
  end
end

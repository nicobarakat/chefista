class AddUserIdToChef < ActiveRecord::Migration[5.1]
  def change
    add_column :chefs, :user_id, :integer
  end
end

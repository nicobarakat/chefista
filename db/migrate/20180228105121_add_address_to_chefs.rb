class AddAddressToChefs < ActiveRecord::Migration[5.1]
  def change
    add_column :chefs, :address, :string
  end
end

class CreateChefs < ActiveRecord::Migration[5.1]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :title
      t.integer :rating
      t.text :description
      t.integer :price
      t.text :categories, array: true, default: []

      t.timestamps
    end
  end
end

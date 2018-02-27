class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.boolean :confirmation, :default => false
      t.references :chef, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

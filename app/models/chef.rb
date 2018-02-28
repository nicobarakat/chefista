class Chef < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :title, presence: true
  validates :price, presence: true
end

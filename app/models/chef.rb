class Chef < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :title, presence: true
  validates :price, presence: true
end

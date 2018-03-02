class Chef < ApplicationRecord
  geocoded_by :address
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :title, presence: true
  validates :price, presence: true
  #validates :address, presence: true
  validates :photo, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
end

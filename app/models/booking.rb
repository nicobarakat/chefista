class Booking < ApplicationRecord
  belongs_to :chef
  belongs_to :user
  validates :chef, presence: true
  validates :user, presence: true
end

class Booking < ApplicationRecord
  belongs_to :chef
  belongs_to :user
  validates :date, presence: true
  validates :chef, presence: true
  validates :user, presence: true
end

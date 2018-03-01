class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :chefs
  has_many :chef_bookings, through: :chefs, source: :bookings #chefs ia a table

  def is_chef?
    self.chefs.length > 0
  end
end

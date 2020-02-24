class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :address, :price, :capacity, presence: true
end

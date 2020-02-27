class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings


  validates :address, :price, :capacity, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [:address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

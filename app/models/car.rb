include PgSearch::Model

class Car < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  pg_search_scope :search_by_model_and_brand,
                against: [:model, :brand],
                using: {
                  tsearch: { prefix: true }
                }
end

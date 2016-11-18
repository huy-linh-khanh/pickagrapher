class Photographer < ApplicationRecord
  validates :name, :location_id, :user, presence: true

  belongs_to :user
  has_many   :ratings
  has_one    :aggregate_rating
  has_many   :reviews
  has_many   :shooting_locations
  has_many   :bookmarks
  has_one    :busy_date
  has_many   :price_rates
  has_one    :portfolio
  has_many   :orders
  belongs_to :location
end

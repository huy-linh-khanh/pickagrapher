class Photographer < ApplicationRecord
  belongs_to :user_account, class_name: 'User'
  has_many :ratings
  has_many :reviews
  has_many :shooting_locations
  has_many :bookmarks
  has_one :busy_date
  has_many :price_rates
  has_one :portfolio
  has_many :orders
end

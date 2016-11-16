class Category < ApplicationRecord
  validates :name, :unit_name, presence: true
  has_many :albums
end

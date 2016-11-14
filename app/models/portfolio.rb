class Portfolio < ApplicationRecord
  belongs_to :photographer
  has_many :albums
end

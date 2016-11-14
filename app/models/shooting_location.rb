class ShootingLocation < ApplicationRecord
  belongs_to :photographer
  belongs_to :location
end

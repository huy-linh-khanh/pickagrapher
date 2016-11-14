class Location < ApplicationRecord
  belongs_to :country
  has_many   :photographers
end

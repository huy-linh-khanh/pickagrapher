class Review < ApplicationRecord
  belongs_to :user
  belongs_to :photographer
end

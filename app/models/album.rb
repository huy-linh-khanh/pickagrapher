class Album < ApplicationRecord
  belongs_to :portfolio
  belongs_to :category
  has_many   :images
end

class Album < ApplicationRecord
  belongs_to :portfolio
  belongs_to :category
end

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :photographer
  belongs_to :location
  belongs_to :category

  enum status: [:created, :accepted, :rejected]
end

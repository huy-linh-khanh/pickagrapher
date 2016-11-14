class Order < ApplicationRecord
  belongs_to :user
  belongs_to :photographer
  belongs_to :location

  enum status: [:created, :accepted, :rejected]
end

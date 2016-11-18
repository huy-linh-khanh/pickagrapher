class Album < ApplicationRecord
  belongs_to :portfolio
  belongs_to :category
  has_many   :images
  validates :portfolio_id, :category_id, :name, :create_time, presence: true
end

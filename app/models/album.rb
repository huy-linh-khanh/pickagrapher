class Album < ApplicationRecord
  belongs_to :portfolio
  belongs_to :category
  has_many   :images, :inverse_of => :album, :dependent => :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :portfolio_id, :category_id, :name, :create_time, presence: true
end

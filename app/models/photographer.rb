class Photographer < ApplicationRecord
  belongs_to :user_account, class_name: 'User'
  has_many :ratings
  has_many :reviews
  has_many :bookmarks
  has_one :busy_date
end

class Photographer < ApplicationRecord
  belongs_to :user_account, class_name: 'User'
  has_many :ratings
end

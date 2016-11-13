class Photographer < ApplicationRecord
  belongs_to :user_account, class_name: 'User'
end

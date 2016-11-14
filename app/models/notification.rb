class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :order

  enum status [:unread, :read]
end

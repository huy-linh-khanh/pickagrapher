class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_one  :photographer
  has_many :ratings
  has_many :reviews
  has_many :bookmarks
  has_many :orders
  has_many :notifications
end
class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" },
  #   :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  mount_uploader :profile_image, ImageUploader

  has_one  :photographer
  has_many :ratings
  has_many :reviews
  has_many :bookmarks
  has_many :orders
  has_many :notifications
  has_many :authentications
end

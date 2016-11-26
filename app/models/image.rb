class Image < ApplicationRecord
  belongs_to :album
  mount_uploader :url, ImageUploader
end

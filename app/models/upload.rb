class Upload < ApplicationRecord
  mount_uploader :name, ImageUploader
end

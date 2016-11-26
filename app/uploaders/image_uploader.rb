class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
  # storage :fog
  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/" + ["main", "missing.png"].compact.join('/'))
  end

  version :large do
    process resize_to_limit: [800, 800]
  end

  version :medium, :from_version => :large do
    process resize_to_limit: [500, 500]
  end

  version :thumb, :from_version => :medium do
    process resize_to_fit: [100, 100]
  end

  version :square do
    process :resize_to_fill => [500, 500]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end

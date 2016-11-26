CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
  config.aws_acl    = 'public-read'

  # The maximum period for authenticated_urls is only 7 days.
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  # Set custom options such as cache control to leverage browser caching
  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    region:            ENV.fetch('AWS_REGION') # Required
  }
end

# Access Key ID: AKIAJFHNOWA66DEOK7XA
# Secret Access Key: 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
# Region: ap-southeast-1
# Access Key ID: AKIAIL5HSUDHKZA2SSHQ
# Secret Access Key: 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

#-----------------------------------------
# Access key: `AKIAIGTJJ67Z6Y3EY5KQ`
# Secret: `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`
# Bucket: `pickagrapher`
# Region: 'us-east-1'

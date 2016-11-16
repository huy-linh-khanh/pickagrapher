# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( sessions.css )
Rails.application.config.assets.precompile += %w( sessions.js )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( registrations.css )
Rails.application.config.assets.precompile += %w( registrations.js )
Rails.application.config.assets.precompile += %w( photographers.css )
Rails.application.config.assets.precompile += %w( photographers.js )
Rails.application.config.assets.precompile += %w( aggregate_ratings.css )
Rails.application.config.assets.precompile += %w( aggregate_ratings.js )
Rails.application.config.assets.precompile += %w( albums.css )
Rails.application.config.assets.precompile += %w( albums.js )
Rails.application.config.assets.precompile += %w( bookmarks.css )
Rails.application.config.assets.precompile += %w( bookmarks.js )
Rails.application.config.assets.precompile += %w( busy_dates.css )
Rails.application.config.assets.precompile += %w( busy_dates.js )
Rails.application.config.assets.precompile += %w( categories.css )
Rails.application.config.assets.precompile += %w( categories.js )
Rails.application.config.assets.precompile += %w( countries.css )
Rails.application.config.assets.precompile += %w( countries.js )
Rails.application.config.assets.precompile += %w( images.css )
Rails.application.config.assets.precompile += %w( images.js )
Rails.application.config.assets.precompile += %w( locations.css )
Rails.application.config.assets.precompile += %w( locations.js )
Rails.application.config.assets.precompile += %w( notifications.css )
Rails.application.config.assets.precompile += %w( notifications.js )
Rails.application.config.assets.precompile += %w( orders.css )
Rails.application.config.assets.precompile += %w( orders.js )
Rails.application.config.assets.precompile += %w( portfolios.css )
Rails.application.config.assets.precompile += %w( portfolios.js )
Rails.application.config.assets.precompile += %w( price_rates.css )
Rails.application.config.assets.precompile += %w( price_rates.js )
Rails.application.config.assets.precompile += %w( ratings.css )
Rails.application.config.assets.precompile += %w( ratings.js )
Rails.application.config.assets.precompile += %w( reviews.css )
Rails.application.config.assets.precompile += %w( reviews.js )
Rails.application.config.assets.precompile += %w( shooting_locations.css )
Rails.application.config.assets.precompile += %w( shooting_locations.js )
Rails.application.config.assets.precompile += %w( users.css )
Rails.application.config.assets.precompile += %w( users.js )
Rails.application.config.assets.precompile += %w( stores.css )
Rails.application.config.assets.precompile += %w( stores.js )
Rails.application.config.assets.precompile += %w( bookings.css )
Rails.application.config.assets.precompile += %w( bookings.js )
Rails.application.config.assets.precompile += %w( portfolios.css )
Rails.application.config.assets.precompile += %w( portfolios.js )
Rails.application.config.assets.precompile += %w( policies.css )
Rails.application.config.assets.precompile += %w( policies.js )

%w(  ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.scss"]
  # Rails.application.config.assets.precompile += %w( home.scss )
end

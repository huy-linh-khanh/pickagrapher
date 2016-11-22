# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( sessions.scss )
Rails.application.config.assets.precompile += %w( sessions.js )
Rails.application.config.assets.precompile += %w( home.scss )
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( registrations.scss )
Rails.application.config.assets.precompile += %w( registrations.js )
Rails.application.config.assets.precompile += %w( photographers.scss )
Rails.application.config.assets.precompile += %w( photographers.js )
Rails.application.config.assets.precompile += %w( aggregate_ratings.scss )
Rails.application.config.assets.precompile += %w( aggregate_ratings.js )
Rails.application.config.assets.precompile += %w( albums.scss )
Rails.application.config.assets.precompile += %w( albums.js )
Rails.application.config.assets.precompile += %w( bookmarks.scss )
Rails.application.config.assets.precompile += %w( bookmarks.js )
Rails.application.config.assets.precompile += %w( busy_dates.scss )
Rails.application.config.assets.precompile += %w( busy_dates.js )
Rails.application.config.assets.precompile += %w( categories.scss )
Rails.application.config.assets.precompile += %w( categories.js )
Rails.application.config.assets.precompile += %w( countries.scss )
Rails.application.config.assets.precompile += %w( countries.js )
Rails.application.config.assets.precompile += %w( images.scss )
Rails.application.config.assets.precompile += %w( images.js )
Rails.application.config.assets.precompile += %w( locations.scss )
Rails.application.config.assets.precompile += %w( locations.js )
Rails.application.config.assets.precompile += %w( notifications.scss )
Rails.application.config.assets.precompile += %w( notifications.js )
Rails.application.config.assets.precompile += %w( orders.scss )
Rails.application.config.assets.precompile += %w( orders.js )
Rails.application.config.assets.precompile += %w( portfolios.scss )
Rails.application.config.assets.precompile += %w( portfolios.js )
Rails.application.config.assets.precompile += %w( price_rates.scss )
Rails.application.config.assets.precompile += %w( price_rates.js )
Rails.application.config.assets.precompile += %w( ratings.scss )
Rails.application.config.assets.precompile += %w( ratings.js )
Rails.application.config.assets.precompile += %w( reviews.scss )
Rails.application.config.assets.precompile += %w( reviews.js )
Rails.application.config.assets.precompile += %w( shooting_locations.scss )
Rails.application.config.assets.precompile += %w( shooting_locations.js )
Rails.application.config.assets.precompile += %w( users.scss )
Rails.application.config.assets.precompile += %w( users.js )
Rails.application.config.assets.precompile += %w( stores.scss )
Rails.application.config.assets.precompile += %w( stores.js )
Rails.application.config.assets.precompile += %w( bookings.scss )
Rails.application.config.assets.precompile += %w( bookings.js )
Rails.application.config.assets.precompile += %w( portfolios.scss )
Rails.application.config.assets.precompile += %w( portfolios.js )
Rails.application.config.assets.precompile += %w( policies.scss )
Rails.application.config.assets.precompile += %w( policies.js )
Rails.application.config.assets.precompile += %w( authentications.scss )
Rails.application.config.assets.precompile += %w( authentications.js )

%w( ).each do |controller|
Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.scss"]

end
# %w( 'sessions' 'home' 'registrations' 'photographers' 'aggregate_ratings' 'albums' 'bookmarks' 'busy_dates'
#  'categories' 'countries' 'images' 'locations' 'notifications' 'orders' 'portfolios' 'price_rates'
#   'ratings' 'reviews' 'shooting_locations' 'users' 'stores' 'bookings' 'portfolios' 'policies')

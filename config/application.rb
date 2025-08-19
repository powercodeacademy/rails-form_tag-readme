require_relative 'boot'

<<<<<<< HEAD
require 'rails/all'
=======
require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
## require "sprockets/railtie" # Removed for Rails 7.1 compatibility (no asset pipeline)
# require "rails/test_unit/railtie"
>>>>>>> rails-7.1

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module BlogFlash
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
<<<<<<< HEAD
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
=======
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.load_defaults 7.1
    config.active_support.cache_format_version = 7.1

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
>>>>>>> rails-7.1
  end
end

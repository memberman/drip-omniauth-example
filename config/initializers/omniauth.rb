# OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  unless Rails.env.production?
    provider :developer, fields: [:whole_name, :email]
  end
  provider :drip, ENV['DRIP_KEY'], ENV['DRIP_SECRET']
end

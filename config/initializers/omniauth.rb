Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['INSTAGRAM_CLIENT_ID'], ENV['INSTAGRAM_CLIENT_SECRET'],
           scope: 'user_profile,user_media', # Specify the scopes you need
           redirect_uri: ENV['INSTAGRAM_REDIRECT_URI'] # Make sure this URI matches the one set in Instagram settings
end

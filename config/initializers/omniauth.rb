Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['LINKEDIN_CLIENT_ID'], ENV['LINKEDIN_CLIENT_SECRET'],
           scope: 'r_liteprofile r_emailaddress', # Specify the scopes you need
           redirect_uri: ENV['LINKEDIN_REDIRECT_URI'] # Make sure this URI matches the one set in Instagram settings
end
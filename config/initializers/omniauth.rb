Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, 78p0nhdyeokg73, WPL_AP1.yP8c5KGDHDCQcZcY.i0bl+w==, scope: 'r_liteprofile r_emailaddress'
end
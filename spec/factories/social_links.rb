FactoryBot.define do
  factory :social_link do
    association :profile
    platform { "Facebook" }
    url { "https://facebook.com/example_profile" }
  end
end

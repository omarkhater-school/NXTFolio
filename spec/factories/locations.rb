FactoryBot.define do
  factory :location do
    profile { nil }
    country { "MyString" }
    state { "MyString" }
    city { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
    location_type { "MyString" }
  end
end

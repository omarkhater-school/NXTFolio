FactoryBot.define do
  factory :location do
    profile               # assumes a `belongs_to :profile` association
    country { "USA" }
    state { "California" }
    city { "San Francisco" }
    latitude { 37.7749 }
    longitude { -122.4194 }
    location_type { "Office" } # or "Home", "Other"
  end
end
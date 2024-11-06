# spec/factories/travel_details.rb
FactoryBot.define do
  factory :travel_detail do
    association :profile
    country { "USA" }
    state { "California" }
    city { "Los Angeles" }
    start_date { Date.today }
    end_date { Date.today + 7.days }
    details { "Business trip for client meetings" }
  end
end

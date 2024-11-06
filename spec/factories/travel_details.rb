FactoryBot.define do
  factory :travel_detail do
    profile { nil }
    country { "MyString" }
    state { "MyString" }
    city { "MyString" }
    start_date { "2024-11-06" }
    end_date { "2024-11-06" }
    details { "MyString" }
  end
end

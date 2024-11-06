FactoryBot.define do
  factory :profile do
    user { nil }
    first_name { "MyString" }
    last_name { "MyString" }
    date_of_birth { "2024-11-06" }
    gender { "MyString" }
    phone { "MyString" }
    bio { "MyText" }
    highlights { "MyText" }
    template { nil }
  end
end

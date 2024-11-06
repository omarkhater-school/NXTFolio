# spec/factories/profiles.rb
FactoryBot.define do
  factory :profile do
    association :user # needs user factory
    association :template # needs template factory
    first_name { "John" }
    last_name { "Doe" }
    date_of_birth { "1990-01-01" }
    gender { "Male" }
    phone { "123-456-7890" }
    bio { "This is a test bio" }
    highlights { "Test highlights" }

    # Add transient attributes for some variations
    trait :female do
      gender { "Female" }
      first_name { "Jane" }
    end
  end
end

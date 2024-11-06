# spec/factories/users.rb
FactoryBot.define do
    factory :user do
      sequence(:email) { |n| "user#{n}@example.com" }
      password { "password" }
      first_name { Faker::Name.first_name }
      last_name { Faker::Name.last_name }
      date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 65) }
      gender { ["Male", "Female"].sample }
      phone { Faker::PhoneNumber.cell_phone }
      country { Faker::Address.country }
      state { Faker::Address.state }
      city { Faker::Address.city }
      latitude { Faker::Address.latitude }
      longitude { Faker::Address.longitude }
      company { Faker::Company.name }
      industry { ["Tech", "Fashion", "Finance", "Healthcare"].sample }
      job_name { Faker::Job.title }
      experience { "#{rand(1..10)} years" }
      specialization { Faker::Job.field }
      bio { Faker::Lorem.paragraph }
      is_admin { false }
      enabled { true }
      userKey { SecureRandom.hex(10) }
      highlights { "Experienced in #{job_name}" }
      notification { false }
  
      # Social links
      facebook_link { Faker::Internet.url(host: 'facebook.com') }
      linkedIn_link { Faker::Internet.url(host: 'linkedin.com') }
      instagram_link { Faker::Internet.url(host: 'instagram.com') }
      personalWebsite_link { Faker::Internet.url }
  
      # Additional attributes
      sign_in_count { 0 }
      created_at { Time.current }
      updated_at { Time.current }
  
      # Traits
      trait :admin do
        is_admin { true }
      end
  
      trait :with_profile_picture do
        profile_picture { Faker::Avatar.image }
      end
  
      trait :with_cover_picture do
        cover_picture { Faker::LoremFlickr.image(size: "800x300") }
      end
    end
  end
  
FactoryBot.define do
    
  factory :user do
    email { "user_#{SecureRandom.hex(5)}@example.com" }
    encrypted_password { "password" }
    reset_password_token { SecureRandom.hex(10) }
    reset_password_sent_at { Time.now }
    remember_created_at { Time.now }
    sign_in_count { 0 }
    current_sign_in_at { Time.now }
    last_sign_in_at { Time.now }
    current_sign_in_ip { "127.0.0.1" }
    last_sign_in_ip { "127.0.0.1" }
    provider { "email" }
    uid { SecureRandom.uuid }
    name { "User Name" }
    image { "user_image.jpg" }
    password { "password" }

    trait :with_general_info do
      after(:create) do |user|
        create(:general_info, user: user)
      end
    end
  end
end

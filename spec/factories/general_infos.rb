FactoryBot.define do
  factory :general_info do
    userKey { "user_#{SecureRandom.hex(5)}" }
    first_name { "John" }
    last_name { "Doe" }
    month_ofbirth { rand(1..12) }
    day_ofbirth { rand(1..28) }
    year_ofbirth { rand(1950..2000) }
    gender { ["Male", "Female", "Other"].sample }
    company { "Example Corp" }
    highlights { "Experienced professional" }
    industry { "Technology" }
    country { "USA" }
    state { "California" }
    city { "San Francisco" }
    compensation { "100000" }
    facebook_link { "https://facebook.com/johndoe" }
    linkedIn_link { "https://linkedin.com/in/johndoe" }
    instagram_link { "https://instagram.com/johndoe" }
    personalWebsite_link { "https://johndoe.com" }
    bio { "A brief bio about John Doe." }
    specific_profile_id { 1 }
    profile_picture { "profile.jpg" }
    cover_picture { "cover.jpg" }
    gallery_pictures { ["gallery1.jpg", "gallery2.jpg"] }
    template_id { 1 }
    specific_profile { { key: "value" } }
    phone { "123-456-7890" }
    latitude { 37.7749 }
    longitude { -122.4194 }
    job_attr { { title: "Software Engineer" } }
    job_name { "Developer" }
    is_admin { false }
    email { "john.doe@example.com" }
    specialization { "Software Development" }
    profdetails { "Professional details here" }
    experience { "5 years" }
    emailaddr { "john.doe@example.com" }
    notification { false }
    notification_from { [] }
    travel_country { "USA" }
    travel_state { "California" }
    travel_city { "San Francisco" }
    travel_start { Date.today }
    travel_end { Date.today + 7 }
    travel_details { "Business trip" }

    # Association with User
    association :user
  end
end

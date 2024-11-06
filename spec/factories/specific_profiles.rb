FactoryBot.define do
  factory :specific_profile do
    association :profile

    type  { "DesignerProfile" }
    attributes_data { {skills: ["Photography", "Editing"], experience: "5 years"} }
  end
end

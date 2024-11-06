# spec/factories/professional_details.rb
FactoryBot.define do
  factory :professional_detail do
    association :profile
    company { "Tech Corp" }
    industry { "Technology" }
    job_name { "Software Engineer" }
    experience { "5 years" }
    specialization { "Backend Development" }
  end
end

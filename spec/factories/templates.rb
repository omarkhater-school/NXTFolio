# spec/factories/templates.rb
FactoryBot.define do
    factory :template do
      prof_name { ["Designer", "Photographer", "Model"].sample }
      prof_attribute do
        case prof_name
        when "Designer"
          { skills: ["Sketching", "Pattern Making"], experience: "5 years", specialties: ["Fashion", "Textile"] }
        when "Photographer"
          { skills: ["Editing", "Lighting"], experience: "3 years", genres: ["Portrait", "Fashion"] }
        when "Model"
          { skills: ["Posing", "Walking"], experience: "2 years", attributes: { height: "5'9\"", size: "Small" } }
        end
      end
  
      created_at { Time.current }
      updated_at { Time.current }
    end
  end
  
namespace :data_migration do
    desc "Migrate general_info data to profiles"
    task migrate_general_info_to_profiles: :environment do
      GeneralInfo.find_each do |general_info|
        # Create a User record if one doesn't exist for this general_info entry
        user = User.find_or_create_by!(userKey: general_info.userKey) do |u|
          u.email = general_info.emailaddr || "#{general_info.first_name}.#{general_info.last_name}@example.com"
          u.first_name = general_info.first_name
          u.last_name = general_info.last_name
          u.date_of_birth = if general_info.year_ofbirth && general_info.month_ofbirth && general_info.day_ofbirth
                               Date.new(general_info.year_ofbirth, general_info.month_ofbirth, general_info.day_ofbirth)
                             end
          u.gender = general_info.gender
          u.phone = general_info.phone
          u.bio = general_info.bio
          u.highlights = general_info.highlights
          u.company = general_info.company
          u.industry = general_info.industry
          u.job_name = general_info.job_name
        end
  
        # Create the Profile associated with this User
        profile = Profile.create!(
          user: user,
          first_name: general_info.first_name,
          last_name: general_info.last_name,
          date_of_birth: if general_info.year_ofbirth && general_info.month_ofbirth && general_info.day_ofbirth
                            Date.new(general_info.year_ofbirth, general_info.month_ofbirth, general_info.day_ofbirth)
                          end,
          gender: general_info.gender,
          phone: general_info.phone,
          bio: general_info.bio,
          highlights: general_info.highlights,
          template_id: general_info.template_id
        )
  
        puts "Created profile for GeneralInfo ID #{general_info.id} with linked User ID #{user.id}"
      end
      puts "User data migration to profiles completed."
    end
  end
  
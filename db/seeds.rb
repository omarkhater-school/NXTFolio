# Seed file: db/seeds.rb

# Clear existing tables
puts "Clearing tables..."
City.delete_all
State.delete_all
Country.delete_all
Template.delete_all
User.delete_all
LoginInfo.delete_all
GeneralInfo.delete_all
Gallery.delete_all
Follow.delete_all

# Seeding countries, states, and cities
require 'json'
filename = "countries+states+cities.json"
puts "Seeding countries/states/cities from #{filename}"

countries_data = File.read(Rails.root.join('db', 'seed_files', filename))
countries = JSON.parse(countries_data)

num_countries = countries.length
Country.transaction do
  countries.each_with_index do |country, idx|
    print "\rCountry #{idx + 1} of #{num_countries}"
    STDOUT.flush
    phone_code = country['phone_code']
    phone_code = phone_code.start_with?("+") ? phone_code[1..-1] : phone_code

    country_obj = Country.create!(
      name: country['name'],
      iso3: country['iso3'],
      phone_code: phone_code,
      capital: country['capital'],
      currency: country['currency'],
      region: country['region'],
      subregion: country['subregion'],
      latitude: country['latitude'],
      longitude: country['longitude']
    )

    country['states'].each do |state|
      state_obj = country_obj.states.create!(
        name: state['name'],
        state_code: state['state_code'],
        latitude: state['latitude'],
        longitude: state['longitude']
      )

      state['cities'].each do |city|
        state_obj.cities.create!(
          name: city['name'],
          latitude: city['latitude'],
          longitude: city['longitude']
        )
      end
    end
  end
end

# Create templates
puts "\nCreating templates..."
template_records = [
  { prof_name: 'Designer', prof_attribute: { skills: ['Photoshop', 'Illustrator'], experience: '5 years' } },
  { prof_name: 'Photographer', prof_attribute: { skills: ['Lighting', 'Editing'], experience: '3 years' } },
  { prof_name: 'Model', prof_attribute: { skills: ['Posing', 'Walking'], experience: '2 years' } }
]

template_records.each do |template_data|
  Template.create!(prof_name: template_data[:prof_name], prof_attribute: template_data[:prof_attribute])
  puts "Created template for #{template_data[:prof_name]}"
end

# Fetch all templates from the database to assign to users
templates = Template.all

# Creating Users, GeneralInfos, and other records
puts "\nCreating fake users..."
filenames = ["Andrea-Piacquadio.jpg", "Anthony-Gray.jpg", "Jack-Winbow.jpg", "James-Lawrence.jpg", "Masha-Raymers.jpg", "Tasha-Washington.jpg"]
job_names = ["Brand Owner", "Designer", "Other Creator", "Model", "Photographer",  "Sales", "Marketing", "Retail", "Visual", "Content Creator", "Blogger",  "Influencer", "Forecasting", "Finances", "Other Services", "Manufacturing",  "Materials", "Other Makers"]
fake_password = "Test1234!"

filenames.each do |filename|
  name = filename.gsub(".jpg", "").split("-")
  first_name, last_name = name[0], name[1]
  userkey = SecureRandom.hex(10)

  login_info = LoginInfo.find_or_create_by(email: "#{first_name}.#{last_name}@example.com") do |info|
    info.password = fake_password
    info.password_confirmation = fake_password
    info.userKey = userkey
  end

  general_info = GeneralInfo.find_or_create_by(userKey: userkey) do |info|
    info.first_name = first_name
    info.last_name = last_name
    info.company = "TestInc"
    info.industry = "Fashion"
    info.job_name = job_names.sample
    info.highlights = "Just a test User"
    info.country = "United States"
    info.state = "Texas"
    info.city = "College Station"
    info.emailaddr = "#{first_name}.#{last_name}@example.com"
    info.profile_picture = File.open(Rails.root.join("db", "seed_files", filename))
    info.template_id = templates.sample.id # Randomly assign a template ID
  end

  puts "Created User #{first_name} #{last_name} with email #{login_info.email}"
end

puts "Creating fake follower/followee connections..."
(1..filenames.length).each do |i|
  follower = GeneralInfo.find_by(id: i)
  next unless follower

  3.times do
    random_user_id = rand(1..filenames.length)
    followee = GeneralInfo.find_by(id: random_user_id)
    next if followee.nil? || followee == follower || Follow.exists?(follower: follower, followee: followee)

    Follow.create!(follower: follower, followee: followee)
    puts "Follower #{follower.first_name} now follows #{followee.first_name}"
  end
end

puts "Creating fake galleries..."
(1..10).each do |i|
  Gallery.create!(
    gallery_title: "Test Gallery",
    gallery_description: "Just a test gallery",
    GeneralInfo_id: i % 6 + 1, # Limit to 6 users' IDs
    gallery_picture: [File.open(Rails.root.join("db", "seed_files" , "Jack-Winbow.jpg"))],
    test_picture: [File.open(Rails.root.join("db", "seed_files" , "Jack-Winbow.jpg"))]
  )
end

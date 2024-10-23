require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  let(:general_info) { create(:general_info, user: user) }

  before do
    general_info.update!(
      city: "College Station",
      gender: "Male",
      cover_picture: fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', '3.jpg'), 'image/jpeg'),          
      gallery_pictures: [fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', '2.jpg'), 'image/jpeg')],    
      is_admin: false,                 
      notification: false,                 
      notification_from: ['user1'],        
      profile_picture: fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', '1.jpg'), 'image/jpeg'),       
      userKey: 'test_key',
      first_name: 'John',
      last_name: 'Doe',
      company: 'Test Company',
      highlights: 'Test Highlights',
      industry: 'Test Industry',
      country: 'Test Country',
      state: 'Test State',
      compensation: nil,
      bio: 'Test Bio',
      experience: nil
    )
    Rails.logger.info(general_info.reload.attributes)
  end
  

  describe '#missing_fields' do
    it 'identifies missing fields for incomplete user info' do
      expect(user.missing_fields).to contain_exactly('compensation', 'experience')
    end
  end

  
end

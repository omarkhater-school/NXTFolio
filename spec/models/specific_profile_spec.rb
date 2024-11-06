require 'rails_helper'

RSpec.describe SpecificProfile, type: :model do
  describe "associations" do
    it { should belong_to(:profile) }
  end

  describe "validations" do
    let(:profile) { create(:profile) }
    subject { SpecificProfile.new(profile: profile) }

    it { should validate_inclusion_of(:type).in_array(%w[DesignerProfile PhotographerProfile ModelProfile]) }
  end

  describe "type inheritance" do
    let(:profile) { create(:profile) }
  
    it "creates a DesignerProfile instance when type is 'DesignerProfile'" do
      designer_profile = SpecificProfile.create(type: 'DesignerProfile', profile: profile)
      expect(designer_profile).to be_a(DesignerProfile)
    end
  
    it "creates a ModelProfile instance when type is 'ModelProfile'" do
      model_profile = SpecificProfile.create(type: 'ModelProfile', profile: profile)
      expect(model_profile).to be_a(ModelProfile)
    end
  
    it "creates a PhotographerProfile instance when type is 'PhotographerProfile'" do
      photographer_profile = SpecificProfile.create(type: 'PhotographerProfile', profile: profile)
      expect(photographer_profile).to be_a(PhotographerProfile)
    end
  end

  describe "attributes_data serialization" do
    let(:profile) { create(:profile) }

    it "can store and retrieve JSON data in attributes_data" do
      specific_profile = SpecificProfile.create(
        profile: profile,
        type: 'ModelProfile',
        attributes_data: { skills: ['Photography', 'Editing'], experience: '5 years' }
      )

      expect(specific_profile.attributes_data).to eq({ "skills" => ["Photography", "Editing"], "experience" => "5 years" })
    end
  end

  describe "factory" do
    it "has a valid factory" do
      expect(build(:specific_profile)).to be_valid
    end
  end
end

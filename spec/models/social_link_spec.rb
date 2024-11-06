require 'rails_helper'

RSpec.describe SocialLink, type: :model do
  let(:profile) {create(:profile)}
  subject {build(:social_link, profile: profile)}

  describe "associations" do
    it {should belong_to(:profile)}
  end

  describe "validations" do
    it { should validate_presence_of(:platform)}
    it { should validate_presence_of(:url)}
    it { should validate_length_of(:platform).is_at_most(50)}
    # Validate URL format
    it "is invalid with a bad URL format" do
      subject.url = "invalid-url"
      expect(subject).not_to be_valid
      expect(subject.errors[:url]).to include("is not a valid URL")
    end
  end

  describe "factory" do
    it "has a valid factory" do
      expect(build(:social_link)).to be_valid
    end
  end
end

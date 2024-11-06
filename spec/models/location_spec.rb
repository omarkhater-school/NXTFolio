require 'rails_helper'

RSpec.describe Location, type: :model do
  let(:profile) { create(:profile) } # Creates a valid profile for association
  let(:location) { build(:location, profile: profile)}
  subject { build(:location, profile: profile) } # Build location with valid profile

  describe "associations" do
    it { should belong_to(:profile) }
  end

  describe "validations" do
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:location_type) }

    # Conditional validation for state based on country
    context "when country requires a state" do
      before { subject.country = 'US' } # Example country that requires a state

      it "requires a state" do
        subject.state = nil
        expect(subject).to_not be_valid
        expect(subject.errors[:state]).to include("can't be blank")
      end
    end

    context "when country does not require a state" do
      before { subject.country = 'FR' } # Example country that does not require a state

      it "does not require a state" do
        subject.state = nil
        expect(subject).to be_valid
      end
    end

    # Optional length validation for country, state, city
    it { should validate_length_of(:country).is_at_most(50) }
    it "validates that the length of :state is at most 50 when required" do
      # Set a country that requires state
      location.country = "US"
      location.state = "x" * 51  # Exceeds the limit
      expect(location).not_to be_valid
      expect(location.errors[:state]).to include("is too long (maximum is 50 characters)")
  
      location.state = "x" * 50  # Meets the limit
      expect(location).to be_valid
    end
    it { should validate_length_of(:city).is_at_most(50) }

    # Inclusion validation for location_type
    it { should validate_inclusion_of(:location_type).in_array(%w[Home Office Other]) }

    # Latitude and Longitude validations
    it { should validate_numericality_of(:latitude).is_greater_than_or_equal_to(-90).is_less_than_or_equal_to(90) }
    it { should validate_numericality_of(:longitude).is_greater_than_or_equal_to(-180).is_less_than_or_equal_to(180) }
  end

  describe "custom methods" do
    let(:location) { create(:location, profile: profile, latitude: 40.7128, longitude: -74.0060) }

    it "calculates distance between two locations" do
      other_location = create(:location, latitude: 34.0522, longitude: -118.2437)
      distance = location.distance_to(other_location)
      expect(distance).to be_within(5).of(3940) # Approximate distance in km
    end

    it "formats full address" do
      location.update(city: "New York", state: "NY", country: "USA")
      expect(location.full_address).to eq("New York, NY, USA")
    end
  end

  describe "factory" do
    it "has a valid factory" do
      expect(build(:location)).to be_valid
    end
  end
end

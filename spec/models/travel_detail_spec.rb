# spec/models/travel_detail_spec.rb
require 'rails_helper'

RSpec.describe TravelDetail, type: :model do
  describe "associations" do
    it { should belong_to(:profile) }
  end

  describe "validations" do
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:city) }
    it { should validate_length_of(:country).is_at_most(50) }
    it { should validate_length_of(:state).is_at_most(50) }
    it { should validate_length_of(:city).is_at_most(50) }

    it "validates that end_date is after or equal to start_date" do
      travel_detail = build(:travel_detail, start_date: Date.today, end_date: Date.yesterday)
      expect(travel_detail).not_to be_valid
      expect(travel_detail.errors[:end_date]).to include("must be after or on start date")
    end
  end

  describe "factory" do
    it "has a valid factory" do
      expect(build(:travel_detail)).to be_valid
    end
  end
end

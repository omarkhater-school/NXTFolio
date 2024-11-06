# spec/models/professional_detail_spec.rb
require 'rails_helper'

RSpec.describe ProfessionalDetail, type: :model do
  describe "associations" do
    it { should belong_to(:profile) }
  end

  describe "validations" do
    it { should validate_presence_of(:company) }
    it { should validate_presence_of(:industry) }
    it { should validate_presence_of(:job_name) }
    it { should validate_length_of(:company).is_at_most(100) }
    it { should validate_length_of(:industry).is_at_most(50) }
    it { should validate_length_of(:job_name).is_at_most(50) }
    it { should validate_length_of(:experience).is_at_most(50) }
    it { should validate_length_of(:specialization).is_at_most(50) }
  end

  describe "factory" do
    it "has a valid factory" do
      expect(build(:professional_detail)).to be_valid
    end
  end
end

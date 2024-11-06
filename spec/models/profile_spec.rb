require 'rails_helper'

RSpec.describe Profile, type: :model do
  let(:user) { User.create(email: 'test@example.com', password: 'password') }
  let(:template) { Template.create(prof_name: 'Designer', prof_attribute: { skills: ['Designing'] }) }
  
  subject {
    described_class.new(
      user: user,
      first_name: "John",
      last_name: "Doe",
      date_of_birth: Date.new(1990, 1, 1),
      gender: "Male",
      phone: "1234567890",
      bio: "An experienced designer",
      highlights: "10 years in fashion industry",
      template: template
    )
  }

  # Validation tests
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should belong_to(:user) }
    it { should belong_to(:template) }
    it { should belong_to(:user) }
    it { should belong_to(:template) }
  end

  # Association tests
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:template) }
  end

  # Attribute validations
  describe 'attribute validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a first name' do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a last name' do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a user' do
      subject.user = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a template' do
      subject.template = nil
      expect(subject).to_not be_valid
    end
  end
end

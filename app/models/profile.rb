class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :template
  has_many :social_links, dependent: :destroy
  has_many :professional_details, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :travel_details, dependent: :destroy
  has_one :specific_profile, dependent: :destroy
end

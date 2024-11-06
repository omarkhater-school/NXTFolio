class SpecificProfile < ApplicationRecord
  belongs_to :profile
  # Add an explicit inclusion validation for profile_type
  validates :type, inclusion: { in: %w[DesignerProfile PhotographerProfile ModelProfile] }
  serialize :attributes_data, JSON
end

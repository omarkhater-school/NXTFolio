class Location < ApplicationRecord
  belongs_to :profile
  validates :country, presence: true, length: {maximum: 50}
  validates :city, presence: true, length: {maximum: 50}
  validates :state, presence: true, length: { maximum: 50 }, if: :country_requires_state?
  validates :location_type, presence: true, inclusion: { in: %w[Home Office Other] }
  validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90, only_integer: false }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180, only_integer: false }
  COUNTRIES_WITH_STATES = %w[US CA AU BR IN MX NG AR].freeze

  def country_requires_state?
    COUNTRIES_WITH_STATES.include?(country)
  end

  def distance_to(other_location)
    # Calculates the distance in kilometers between two locations using Haversine formula
    to_rad = Math::PI / 180
    earth_radius_km = 6371

    delta_lat = (other_location.latitude - latitude) * to_rad
    delta_lon = (other_location.longitude - longitude) * to_rad

    a = Math.sin(delta_lat / 2) ** 2 +
        Math.cos(latitude * to_rad) * Math.cos(other_location.latitude * to_rad) *
        Math.sin(delta_lon / 2) ** 2

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
    earth_radius_km * c
  end

  def full_address
    [city, state, country].compact.join(", ")
  end
end

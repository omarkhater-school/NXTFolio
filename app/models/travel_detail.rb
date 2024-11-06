# app/models/travel_detail.rb
class TravelDetail < ApplicationRecord
  belongs_to :profile

  validates :country, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, length: { maximum: 50 }
  validates :details, length: { maximum: 255 }
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    if end_date.present? && start_date.present? && end_date < start_date
      errors.add(:end_date, "must be after or on start date")
    end
  end
end

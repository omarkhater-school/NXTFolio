class ProfessionalDetail < ApplicationRecord
  belongs_to :profile

  validates :company, presence: true, length: { maximum: 100 }
  validates :industry, presence: true, length: { maximum: 50 }
  validates :job_name, presence: true, length: { maximum: 50 }
  validates :experience, length: { maximum: 50 }
  validates :specialization, length: { maximum: 50 }
end

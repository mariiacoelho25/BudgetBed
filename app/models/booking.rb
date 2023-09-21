class Reservation < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :validate_date_range
  belongs_to :room
  belongs_to :user

  def validate_date_range
    if start_date && end_date && start_date >= end_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end

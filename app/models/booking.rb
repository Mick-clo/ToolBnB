class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user

  validates :user_id, presence: true
  validates :tool_id, presence: true
  validates :starting_date, presence: true
  validates :ending_date, presence: true
  # validates :status, inclusion: { in: ['pending', 'approved', 'declined'] }

  validate :ending_date_is_correct, :starting_date_is_present

  def starting_date_is_present
    if starting_date < Date.today
      errors.add(:starting_date, "can't be in the past")
    end
  end

  def ending_date_is_correct
    if ending_date < starting_date
      errors.add(:ending_date, "can't be before the starting date")
    end
  end
end

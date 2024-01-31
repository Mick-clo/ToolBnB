class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user

  validates :user_id, presence: true
  validates :tool_id, presence: true
  validates :starting_date, presence: true
  validates :ending_date, presence: true
  # validates :status, inclusion: { in: ['pending', 'approved', 'declined'] }
end

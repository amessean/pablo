class Booking < ApplicationRecord
  belongs_to :users, optional: true
  has_many :reviews, dependent: :destroy
  CATEGORY = ["Diner", "Party", "Weekend", "Holiday"]
  validates :start_time, :end_time, presence: true
  validate :end_time_after_start_time

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, :not_implemented, message: "must be after the start time")
    end
 end
end


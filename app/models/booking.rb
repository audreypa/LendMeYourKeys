class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validate :end_date_after_start_date
  validate :start_date_after_now

  def total_price
    num_days = (ends_at.to_date - starts_at.to_date).to_i + 1
    num_days * car.price_per_day
  end

  private
  def end_date_after_start_date
    return if ends_at.blank? || starts_at.blank?
    if ends_at < starts_at
      errors.add(:ends_at, "must be after the start date")
    end
  end

  def start_date_after_now
    return if starts_at.blank?
    if starts_at < Date.today
      errors.add(:starts_at, "must be after now")
    end
  end
end

class Reservation < ApplicationRecord
  
  validates :start, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true, numericality: true

  belongs_to :room 
  belongs_to :user

  def total_day
    (self.end_date - self.start).to_i
  end

  def total
    self.total_day.to_i * self.guests.to_i * self.room.fee.to_i
  end


end

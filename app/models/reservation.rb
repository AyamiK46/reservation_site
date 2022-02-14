class Reservation < ApplicationRecord
  
  validates :start, presence: true
  validates :end, presence: true
  validates :guests, presence: true, numericality: true

  belongs_to :room 

  def total_day
    (self.end_date - self.start).to_i
  end

  def total
    self.total_day.to_i * self.guests.to_i * @room.fee.to_i
  end 

end

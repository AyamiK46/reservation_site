class Reservation < ApplicationRecord
  
  validates :start, presence: true
  validates :end, presence: true
  validates :guests, presence: true, numericality: true

  belongs_to :room 
end

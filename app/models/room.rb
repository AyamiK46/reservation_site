class Room < ApplicationRecord
  mount_uploader :room_image, RoomImageUploader

  validates :room_name, presence: true
  validates :room_introduction, presence: true
  validates :fee, presence: true, numericality: true
  validates :address, presence: true
  validates :room_image, presence: true

  belongs_to :user
  has_many :reservations
end

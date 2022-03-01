class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  mount_uploader :user_image, UserImageUploader

  validates :user_image, presence: true, on: :update 
  validates :name, presence: true
  validates :user_introduction, presence: true, on: :update
  validates :email, presence: true
  
  has_many :rooms
  has_many :reservations

end

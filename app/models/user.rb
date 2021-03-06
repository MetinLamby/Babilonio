class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gardens, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :name, :photo, presence: true
end

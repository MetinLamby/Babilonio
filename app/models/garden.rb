class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :description, :photo, :price, presence: true

  validates :title, length: { in: 10..30 }
  validates :size, inclusion: { in: ["Flower Garden", "Container Garden", "Yard", "Back Garden", "Botanical Garden", "Tropical Garden"]}
end

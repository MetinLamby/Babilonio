class Garden < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # validates :title, :description, :photo, :price, presence: true

  validates :title, length: { in: 100..300 }
  validates :garden_type, inclusion: { in: ["Flower Garden", "Container Garden", "Yard", "Back Garden", "Botanical Garden", "Tropical Garden"]}
end

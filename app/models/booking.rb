class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :garden

  validates :user_id, :garden_id, presence: true
end

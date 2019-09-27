class BookingOrder < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  monetize :amount_cents
end

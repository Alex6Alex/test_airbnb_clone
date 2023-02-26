# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :rental_offer
  belongs_to :user

  validates :user_id, uniqueness: { scope: :rental_offer_id }
end

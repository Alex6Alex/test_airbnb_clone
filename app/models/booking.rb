# frozen_string_literal: true

class Booking < ApplicationRecord
  belongs_to :rental_offer
  belongs_to :user
end

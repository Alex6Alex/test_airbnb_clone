# frozen_string_literal: true

class RentalOffer < ApplicationRecord
  belongs_to :accommodation

  has_many :bookings, dependent: :restrict_with_error

  validates :day_price, :start_available_date, :end_available_date, presence: true
end

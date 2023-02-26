# frozen_string_literal: true

class RentalOffer < ApplicationRecord
  belongs_to :accommodation

  validates :day_price, :start_available_date, :end_available_date, presence: true
end

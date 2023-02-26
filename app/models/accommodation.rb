# frozen_string_literal: true

class Accommodation < ApplicationRecord
  belongs_to :user

  has_many :rental_offers, dependent: :restrict_with_error
  has_many_attached :images

  validates :name, :city, :country, :person_count, :bed_count, :description, presence: true

  delegate :username, to: :user, prefix: true

  def nearest_rental_price
    rental_offers.first&.day_price.to_f
  end

  def nearest_start_date
    rental_offers.first&.start_available_date
  end

  def nearest_end_date
    rental_offers.first&.end_available_date
  end
end

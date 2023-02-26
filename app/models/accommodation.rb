# frozen_string_literal: true

class Accommodation < ApplicationRecord
  belongs_to :user

  has_many :rental_offers, dependent: :restrict_with_error
  has_many_attached :images

  validates :name, :city, :country, :person_count, :bed_count, :description, presence: true

  delegate :username, to: :user, prefix: true
end

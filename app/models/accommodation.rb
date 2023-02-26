# frozen_string_literal: true

class Accommodation < ApplicationRecord
  belongs_to :user

  validates :name, :city, :country, :person_count, :bed_count, :description, presence: true
end

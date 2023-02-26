# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :accommodations

  validates :username, :phone_number, presence: true
  validates :username, uniqueness: true
end

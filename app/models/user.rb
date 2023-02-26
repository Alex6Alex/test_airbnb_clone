# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :username, :phone_number, presence: true
  validates :username, uniqueness: true
end

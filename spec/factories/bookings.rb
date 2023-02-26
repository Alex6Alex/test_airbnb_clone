# frozen_string_literal: true

FactoryBot.define do
  factory :booking do
    rental_offer
    user
  end
end

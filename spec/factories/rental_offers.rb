# frozen_string_literal: true

FactoryBot.define do
  factory :rental_offer do
    day_price { 100.0 }
    start_available_date { Date.current }
    end_available_date { 10.days.from_now }
    accommodation
  end
end

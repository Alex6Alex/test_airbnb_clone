# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "user #{i}" }
    phone_number { '+12345678909' }
  end
end

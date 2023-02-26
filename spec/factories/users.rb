# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |i| "user #{i}" }
    email { 'test@email.com' }
    phone_number { '+12345678909' }
    sequence(:password) { |i| "password#{i}" }
  end
end

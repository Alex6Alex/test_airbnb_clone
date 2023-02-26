FactoryBot.define do
  factory :accommodation do
    sequence(:name) { |i| "name #{i}" }
    city { 'Test-city' }
    country { 'Test-country' }
    person_count { 1 }
    bed_count { 1 }
    description { 'description' }
    user
  end
end

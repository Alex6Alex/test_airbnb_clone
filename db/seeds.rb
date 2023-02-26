# frozen_string_literal: true

4.times do |i|
  num = i + 1
  user = User.create!(
    username: "User_#{num}", email: "test#{num}@user.com", password: 'q1w2e3r4', phone_number: '+12345678990'
  )

  2.times do |j|
    Accommodation.create!(
      name: "Test accommodation #{num}.#{j + 1}",
      city: 'Test city',
      country: 'Test country',
      person_count: rand(1..3),
      bed_count: rand(1..2),
      description: "Test description #{num} #{j + 1}",
      user:
    ).rental_offers.create!(
      day_price: 234.0, start_available_date: Date.current, end_available_date: 10.days.from_now
    )
  end
end

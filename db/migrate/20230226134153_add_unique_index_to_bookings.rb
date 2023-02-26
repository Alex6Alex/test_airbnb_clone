# frozen_string_literal: true

class AddUniqueIndexToBookings < ActiveRecord::Migration[7.0]
  def change
    add_index(:bookings, %i[user_id rental_offer_id], unique: true)
  end
end

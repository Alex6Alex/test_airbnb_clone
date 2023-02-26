# frozen_string_literal: true

class CreateRentalOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :rental_offers do |t|
      t.decimal :day_price, null: false
      t.date :start_available_date, null: false
      t.date :end_available_date, null: false
      t.references :accommodation, foreign_key: true, null: false

      t.timestamps
    end
  end
end

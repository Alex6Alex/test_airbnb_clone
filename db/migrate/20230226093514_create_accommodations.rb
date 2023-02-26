# frozen_string_literal: true

class CreateAccommodations < ActiveRecord::Migration[7.0]
  def change
    create_table :accommodations do |t|
      t.text :name, null: false
      t.text :city, null: false
      t.text :country, null: false
      t.integer :person_count, null: false
      t.integer :bed_count, null: false
      t.text :description, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end

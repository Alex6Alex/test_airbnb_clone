# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RentalOffer do
  subject { build(:rental_offer, accommodation: nil) }

  it { is_expected.to belong_to(:accommodation) }
  it { is_expected.to have_many(:bookings) }

  it { is_expected.to validate_presence_of(:day_price) }
  it { is_expected.to validate_presence_of(:start_available_date) }
  it { is_expected.to validate_presence_of(:end_available_date) }
end

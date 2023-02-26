# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Booking do
  subject { build(:booking, rental_offer: nil, user: nil) }

  it { is_expected.to belong_to(:rental_offer) }
  it { is_expected.to belong_to(:user) }
end

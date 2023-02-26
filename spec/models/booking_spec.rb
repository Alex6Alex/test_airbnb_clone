# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Booking do
  subject { build(:booking, rental_offer: nil, user: nil) }

  it { is_expected.to belong_to(:rental_offer) }
  it { is_expected.to belong_to(:user) }

  context 'when it validates uniqueness of user and rental offer' do
    subject { create(:booking) }

    it { is_expected.to validate_uniqueness_of(:user_id).scoped_to(:rental_offer_id) }
  end
end

# frozen_string_literal: true

require 'rails_helper'

describe BookingsController do
  describe '#create' do
    let(:user) { create(:user) }
    let(:rental_offer) { create(:rental_offer, accommodation: create(:accommodation, user:)) }

    let(:params) { { rental_offer_id: rental_offer.id } }

    before { sign_in(user) }

    context 'when rental offer exists' do
      it 'redirects to accommodation page' do
        post(:create, params:)

        expect(response).to have_http_status(:found)
      end

      it 'creates booking' do
        post(:create, params:)

        expect(rental_offer.bookings.where(user:).count).to eq(1)
      end
    end

    context 'when rental offer does not exist' do
      it 'raises error' do
        expect { post(:create, params: { rental_offer_id: 0 }) }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end

    context 'when user is not logged in' do
      before { sign_out(user) }

      it 'redirects to log in page' do
        post(:create, params:)

        expect(response).to have_http_status(:found)
      end

      it 'does not create a booking' do
        expect { post(:create, params:) }.not_to change(rental_offer.bookings, :count)
      end
    end
  end
end

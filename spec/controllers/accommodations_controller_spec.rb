# frozen_string_literal: true

require 'rails_helper'

describe AccommodationsController do
  describe '#index' do
    context 'when action is called' do
      it 'assigns accommodations' do
        get(:index)

        expect(response).to have_http_status(:success)
      end
    end
  end

  describe '#show' do
    context 'when accommodation exists' do
      let(:accommodation) { create(:accommodation) }

      it 'assigns accommodation' do
        get(:show, params: { id: accommodation.id })

        expect(response).to have_http_status(:success)
      end
    end

    context 'when accommodation does not exist' do
      it 'raises error' do
        expect { get(:show, params: { id: 0 }) }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end

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
end

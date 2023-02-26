# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accommodation do
  subject { build(:accommodation, user: nil) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:rental_offers) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:person_count) }
  it { is_expected.to validate_presence_of(:bed_count) }
  it { is_expected.to validate_presence_of(:description) }

  shared_examples 'rentable' do |exp1|
    context 'when accommodation has not rental offers' do
      it { expect(result).to eq(exp1) }
    end

    context 'when accommodation has rental offers' do
      subject { create(:accommodation) }

      before { create(:rental_offer, accommodation: subject) }

      it { expect(result).to eq(expected_result) }
    end
  end

  describe '#nearest_rental_offer' do
    let(:result) { subject.nearest_rental_offer }
    let(:expected_result) { subject.rental_offers.first }

    it_behaves_like 'rentable', nil
  end

  describe '#nearest_rental_price' do
    let(:result) { subject.nearest_rental_price }
    let(:expected_result) { 100.0 }

    it_behaves_like 'rentable', 0
  end

  describe '#nearest_start_date' do
    let(:result) { subject.nearest_start_date }
    let(:expected_result) { Date.current }

    it_behaves_like 'rentable', nil
  end

  describe '#nearest_end_date' do
    let(:result) { subject.nearest_end_date }
    let(:expected_result) { 10.days.from_now.to_date }

    it_behaves_like 'rentable', nil
  end
end

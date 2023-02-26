# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  subject { build(:user) }

  it { is_expected.to have_many(:accommodations) }
  it { is_expected.to have_many(:bookings) }

  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_presence_of(:phone_number) }
  it { is_expected.to validate_uniqueness_of(:username) }
end

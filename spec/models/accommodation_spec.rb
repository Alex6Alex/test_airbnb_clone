require 'rails_helper'

RSpec.describe Accommodation do
  subject { build(:accommodation, user: nil) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:person_count) }
  it { is_expected.to validate_presence_of(:bed_count) }
  it { is_expected.to validate_presence_of(:description) }
end

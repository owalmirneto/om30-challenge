# frozen_string_literal: true

describe Address do
  subject(:address) { build(:blank_address) }

  it { is_expected.to be_invalid }

  describe "associations" do
    it { is_expected.to belong_to(:addressable) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to validate_presence_of(:street_name) }
    it { is_expected.to validate_presence_of(:neighborhood) }
    it { is_expected.to validate_inclusion_of(:state).in_array(AddressStates.list) }
    it { is_expected.to validate_presence_of(:city) }
  end
end

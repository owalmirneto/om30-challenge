# frozen_string_literal: true

describe Citizen do
  subject(:citizen) { build(:blank_citizen) }

  it { is_expected.to be_invalid }

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:cns) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:born_in) }
    it { is_expected.to validate_presence_of(:phone) }
  end
end

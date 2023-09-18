# frozen_string_literal: true

describe "Address by zip code" do
  include_context "when using ViaCEP"

  before { get(api_addresses_path, params: { zip_code: }) }

  context "when zip_code valid" do
    let(:zip_code) { Faker::Address.zip_code }

    it { expect(response).to have_http_status(:success) }
    it { expect(json_body[:zipCode]).to be_present }
    it { expect(json_body[:streetName]).to be_present }
    it { expect(json_body[:neighborhood]).to be_present }
    it { expect(json_body[:city]).to be_present }
    it { expect(json_body[:state]).to be_present }
    it { expect(json_body[:ibge]).to be_present }
  end

  context "when zip_code invalid" do
    let(:zip_code) { nil }

    it { expect(response).to have_http_status(:success) }
    it { expect(json_body[:zipCode]).to be_blank }
    it { expect(json_body[:streetName]).to be_blank }
    it { expect(json_body[:neighborhood]).to be_blank }
    it { expect(json_body[:city]).to be_blank }
    it { expect(json_body[:state]).to be_blank }
    it { expect(json_body[:ibge]).to be_blank }
  end
end

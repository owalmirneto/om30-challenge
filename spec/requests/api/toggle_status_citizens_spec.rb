# frozen_string_literal: true

describe "Address by zip code" do
  before { put(api_toggle_status_citizen_path(citizen_id)) }

  let(:citizen_id) { citizen.id }

  context "when citizen exists" do
    context "with disabled citizen" do
      let(:citizen) { create(:disabled_citizen) }

      it { expect(response).to have_http_status(:success) }
      it { expect(citizen.reload).to be_enabled }
    end

    context "with enabled citizen" do
      let(:citizen) { create(:enabled_citizen) }

      it { expect(response).to have_http_status(:success) }
      it { expect(citizen.reload).not_to be_enabled }
    end
  end

  context "when citizen do not exists" do
    let(:citizen_id) { random_uuid }

    it { expect(response).to have_http_status(:not_found) }
    it { expect(json_body[:success]).to be(false) }
  end
end

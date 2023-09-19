# frozen_string_literal: true

describe "Create citizen" do
  include_context "when using Zenvia"
  include_context "when visit create citizen form"

  it { expect(page).to have_http_status(:success) }

  it "have page title" do
    expect(page).to have_css("h1", text: t("citizens.new.title"))
  end

  it "have back link" do
    expect(page).to have_link(t("shared.form.actions.back_link"), href: citizens_path)
  end

  context "when submit invalid form" do
    before { click_on(h.tmb(Citizen, :create)) }

    it "count errors messages" do
      expect(page).to have_css("form.new_citizen .invalid-feedback", count: 11)
    end
  end

  context "when submit valid form" do
    include_context "when submit form citizen", :create

    let(:citizen_attributes) { attributes_for(:citizen) }
    let(:address_attributes) { attributes_for(:address) }

    it "has success message" do
      expect(page).to have_css(".alert-success", text: t("citizens.create.success"))
    end

    it "has saved citizen" do
      expect(Citizen).to exist(name: citizen_attributes[:name])
    end
  end
end

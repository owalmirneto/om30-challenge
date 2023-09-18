# frozen_string_literal: true

shared_context "when visit update citizen form" do
  before do
    citizen = create(:citizen, address:)

    visit(citizens_path)

    within("##{h.dom_id(citizen)}") do
      click_on(t("shared.link_to.edit.label"))
    end
  end

  let(:address) { create(:address) }
end

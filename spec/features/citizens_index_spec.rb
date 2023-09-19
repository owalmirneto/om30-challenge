# frozen_string_literal: true

describe "Listing citizens" do
  context "when do not exist citizens" do
    before do
      visit(root_path)

      within("header#menu") { click_link(h.tmp(Citizen)) }
    end

    it { expect(page).to have_http_status(:success) }

    it "have page title" do
      expect(page).to have_css("h1", text: t("citizens.index.title"))
    end

    it "have link to new citizen" do
      expect(page).to have_link(text: t("shared.page_title.index.create"))
    end

    it "have not found message" do
      expect(page).to have_css(".alert-warning", text: t("citizens.citizens_table.not_found"))
    end
  end

  context "when exist citizens", :js do
    before do
      create(:citizen, name: citizen_name)
      create_list(:citizen, 3)

      visit(citizens_path)
      find_by_id("term").set(citizen_name)
    end

    let(:citizen_name) { Faker::Name.name }

    it { expect(page).to have_css("tbody tr", count: 1) }
    it { expect(page).to have_content(citizen_name) }
  end
end

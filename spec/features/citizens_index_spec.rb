# frozen_string_literal: true

describe "Listing citizens" do
  before do
    visit(root_path)

    within("header#menu") { click_on(h.tmp(Citizen)) }
  end

  it { expect(page).to have_http_status(:success) }

  it "have page title" do
    expect(page).to have_css("h1", text: t("citizens.index.title"))
  end

  it "have link to new citizen" do
    expect(page).to have_link(text: t("shared.page_title.index.create"))
  end

  it "have not found message" do
    expect(page).to have_css(".alert-warning", text: t("citizens.index.not_found"))
  end
end

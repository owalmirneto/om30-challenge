# frozen_string_literal: true

shared_context "when visit create citizen form" do
  before do
    visit(citizens_path)

    click_on(t("shared.page_title.index.create"))
  end
end

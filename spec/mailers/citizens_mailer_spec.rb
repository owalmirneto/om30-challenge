# frozen_string_literal: true

describe CitizensMailer do
  describe "notify" do
    let(:mail) { described_class.notify(citizen.id) }

    let(:citizen) { create(:citizen, name: I18n.transliterate(Faker::Name.name)) }

    it { expect(mail.subject).to eq(t("citizens_mailer.notify.subject")) }
    it { expect(mail.to).to eq([citizen.email]) }
    it { expect(mail.from).to eq([ENV.fetch("MAILER_FROM")]) }

    it { expect(mail.body.encoded).to have_content(citizen.name) }
  end
end

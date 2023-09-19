# frozen_string_literal: true

shared_context "when using Zenvia" do
  before do
    stub_request(:post, "https://api-rest.zenvia360.com.br/services/send-sms")
      .to_return(body: { sendSmsResponse: { statusCode: 1 } }.to_json)
  end
end

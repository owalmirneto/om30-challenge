# frozen_string_literal: true

shared_context "when using ViaCEP" do
  before do
    stub_request(:get, "https://viacep.com.br/ws//json")
      .with(headers: { Accept: "*/*", Host: "viacep.com.br" })
      .to_return(status: 400, body: viacep_response)

    stub_request(:get, %r{https://viacep.com.br/ws/.*/json})
      .with(headers: { Accept: "*/*", Host: "viacep.com.br" })
      .to_return(status: 200, body: viacep_response)
  end

  let(:viacep_response) do
    return '<html lang="pt-br"></html>' if zip_code.to_s.delete("^0-9").blank?

    build(:via_cep_address, cep: zip_code).to_json
  end
end

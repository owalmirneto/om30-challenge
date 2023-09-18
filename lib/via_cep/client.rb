# frozen_string_literal: true

module ViaCEP
  class Client
    BASE_URL = "https://viacep.com.br/ws"

    def self.call(zip_code)
      new(zip_code).perform
    end

    def initialize(zip_code)
      @zip_code = zip_code.to_s.delete("^0-9")
    end

    def perform
      response = Net::HTTP.get_response(full_uri)

      JSON.parse(response.body, symbolize_names: true)
    rescue JSON::ParserError
      {}
    end

    private

    def full_uri
      URI("#{BASE_URL}/#{@zip_code}/json")
    end
  end
end

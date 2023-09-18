# frozen_string_literal: true

require "via_cep/client"

module Addresses
  class FetchByZipCode < ApplicationInteractor
    def call
      context.fail! if response[:erro].present?

      context.address = mount_address_attributes
    end

    private

    def response
      @response ||= ViaCEP::Client.call(context.zip_code)
    end

    def mount_address_attributes
      {
        zip_code: response[:cep],
        street_name: response[:logradouro],
        neighborhood: response[:bairro],
        city: response[:localidade],
        state: response[:uf],
        ibge: response[:ibge]
      }
    end
  end
end

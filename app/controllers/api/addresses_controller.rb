# frozen_string_literal: true

module API
  class AddressesController < ApplicationController
    def index
      render json: Address.new(address_params)
    end

    def address_params
      Addresses::FetchByZipCode.call(zip_code: params[:zip_code]).address
    end
  end
end

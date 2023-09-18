# frozen_string_literal: true

module API
  class AddressSerializer < ApplicationSerializer
    attributes :zip_code, :street_name, :neighborhood, :city, :state, :ibge
  end
end

# frozen_string_literal: true

class CreateAddressesStatesEnum < ActiveRecord::Migration[7.0]
  ALLOWED_ADDRESS_STATES = [
    "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO",
    "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI",
    "RR", "RO", "RJ", "RN", "RS", "SC", "SP", "SE", "TO"
  ].freeze

  def change
    create_enum :address_states_enum, ALLOWED_ADDRESS_STATES
  end
end

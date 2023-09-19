# frozen_string_literal: true

require "zenvia/client"

module Citizens
  class SendSMSJob < ApplicationJob
    AGGREGATE_ID = ENV.fetch("ZENVIA_AGGREGATE_ID")

    def perform(citizen_id)
      @citizen = Citizen.find(citizen_id)

      Zenvia::Client.call(message, @citizen.phone, AGGREGATE_ID)
    end

    private

    def message
      "Oi #{@citizen.name}, seus dados foram salvos"
    end
  end
end

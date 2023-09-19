# frozen_string_literal: true

require "zenvia/client"

module Citizens
  class SendSMSJob < ApplicationJob
    def perform(citizen_id)
      return if Rails.env.production?

      @citizen = Citizen.find(citizen_id)

      Zenvia::Client.call(message, @citizen.phone, aggregate_id)
    end

    private

    def message
      "Oi #{@citizen.name}, seus dados foram salvos"
    end

    def aggregate_id
      ENV.fetch("ZENVIA_AGGREGATE_ID")
    end
  end
end

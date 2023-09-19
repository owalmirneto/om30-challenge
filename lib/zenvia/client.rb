# frozen_string_literal: true

module Zenvia
  class Client
    BRAZILIAN_CODE = "55"

    def self.call(*)
      new(*).perform
    end

    def initialize(message, phone, aggregate_id)
      @message = message
      @phone = phone.to_s.delete("^0-9")
      @aggregate_id = aggregate_id
    end

    def perform
      zenvia_sms.send

      self
    end

    private

    def zenvia_sms
      @zenvia_sms ||= Zenvia::Sms.new(message_id, @message, @phone, "", @aggregate_id)
    end

    def message_id
      SecureRandom.uuid
    end
  end
end
